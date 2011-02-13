require 'rake'
require File.expand_path('../lib/erb2haml/version', __FILE__)

desc "Release gem #{ERb2Haml::VERSION}"
task :release do
  system "git tag -a #{ERb2Haml::VERSION} -m 'Tagging #{ERb2Haml::VERSION}'" 
  system "git push --tags"
  system "gem push erb2haml-#{ERb2Haml::VERSION}.gem"
end
