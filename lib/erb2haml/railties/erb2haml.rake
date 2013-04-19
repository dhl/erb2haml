require 'find'

RED_FG ="\033[31m"
GREEN_FG = "\033[32m"
END_TEXT_STYLE = "\033[0m"

# Helper method to inject ASCII escape sequences for colorized output
def color(text, begin_text_style)
  begin_text_style + text + END_TEXT_STYLE
end

namespace :haml do
  desc "Perform bulk conversion of all html.erb files to Haml in views folder."
  task :convert_erbs do

    if `which html2haml`.empty?
      puts "#{color "ERROR: ", RED_FG} Could not find " +
         "#{color "html2haml", GREEN_FG} in your PATH. Aborting."
      exit(false) 
    end

    puts "Looking for #{color "ERB", GREEN_FG} files to convert to " +
      "#{color("Haml", RED_FG)}..."

    Find.find("app/views/") do |path|
      if FileTest.file?(path) and path.downcase.match(/\.erb$/i)
        haml_path = path.slice(0...-3)+"haml"

        unless FileTest.exists?(haml_path)
          print "Converting: #{path}... "

          if system("html2haml", path, haml_path)
            puts color("Done!", GREEN_FG)
          else
            puts color("Failed!", RED_FG)
          end

        end

      end
    end
  end #End rake task

  desc "Perform bulk conversion of all html.erb files to Haml in views folder, then remove the converted html.erb files."
  task :replace_erbs do
    if `which html2haml`.empty?
      puts "#{color "ERROR: ", RED_FG} Could not find " +
         "#{color "html2haml", GREEN_FG} in your PATH. Aborting."
      exit(false)
    end

    puts "Looking for #{color "ERB", GREEN_FG} files to convert to " +
      "#{color("Haml", RED_FG)}..."

    Find.find("app/views/") do |path|
      if FileTest.file?(path) and path.downcase.match(/\.erb$/i)
        haml_path = path.slice(0...-3)+"haml"

        unless FileTest.exists?(haml_path)
          print "Converting: #{path}... "

          if system("html2haml", path, haml_path)
            puts color("Done!", GREEN_FG)
            print "Removing: #{path}... "
            if system("rm", path)
              puts color("Removed!", GREEN_FG)
            else
              puts color("Failed!", RED_FG)
            end
          else
            puts color("Failed!", RED_FG)
          end

        end

      end

    end
  end #End rake task

end # End of :haml namespace

