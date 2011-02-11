require 'rake'

$LOAD_PATH.unshift 'lib'


desc "Release gem"
task :release do
  require 'erb2haml'
  system "git tag -a #{ERb2Haml::VERSION} -m 'Tagging #{ERb2Haml::VERSION}'" 
  system "git push --tags"
  system "gem push erb2haml-#{ERb2Haml::VERSION}.gem"
end
