require 'erb2haml'
require 'rails'

module ERb2Haml
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'erb2haml/railties/erb2haml.rake'
    end
  end
end
