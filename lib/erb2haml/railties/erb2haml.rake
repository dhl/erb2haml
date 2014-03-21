require 'find'

RED_FG ="\033[31m"
GREEN_FG = "\033[32m"
END_TEXT_STYLE = "\033[0m"

# Helper method to inject ASCII escape sequences for colorized output
def color(text, begin_text_style)
  begin_text_style + text + END_TEXT_STYLE
end

def erb_paths
  if ENV.has_key? 'ERB_PATH'
    [ENV['ERB_PATH']]
  else
    ['app/views/', 'test/dummy/app/views']
  end
end

def check_html2haml
  if `which html2haml`.empty?
    puts "#{color "ERROR: ", RED_FG} Could not find " +
        "#{color "html2haml", GREEN_FG} in your PATH. Aborting."
    exit(false) 
  end
end

def erb2haml(path, options={remove: false})
  begin
    Find.find(path) do |path|
      if FileTest.file?(path) and path.downcase.match(/\.erb$/i)
        haml_path = path.slice(0...-3)+"haml"

        unless FileTest.exists?(haml_path)
          print "Converting: #{path}... "

          if system("html2haml", path, haml_path)
            puts color("Done!", GREEN_FG)
            if options[:remove] 
              print "Removing: #{path}... "
              if system("rm", path)
                puts color("Removed!", GREEN_FG)
              else
                puts color("Removal failed!", RED_FG)
              end
            end
          else
            puts color("Failed!", RED_FG)
          end
        end
      end
    end
  rescue
    if ENV['ERB_PATH'] && ENV['ERB_PATH'] == path
      puts color("Path #{path} not found!", RED_FG)
    end
  end
end

namespace :haml do
  desc "Perform bulk conversion of all html.erb files to Haml in views folder."
  task :convert_erbs do

    check_html2haml

    puts "Looking for #{color "ERB", GREEN_FG} files to convert to " +
      "#{color("Haml", RED_FG)}..."

    erb_paths.each do |path|
      erb2haml path
    end
  end #End rake task

  desc "Perform bulk conversion of all html.erb files to Haml in views folder, then remove the converted html.erb files."
  task :replace_erbs do

    check_html2haml

    puts "Looking for #{color "ERB", GREEN_FG} files to convert to " +
      "#{color("Haml", RED_FG)}..."

    erb_paths.each do |path|
      erb2haml path, remove: true
    end
  end #End rake task

end # End of :haml namespace

