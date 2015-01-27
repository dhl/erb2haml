# encoding: utf-8
require File.expand_path("../lib/erb2haml/version", __FILE__)

Gem::Specification.new do |s|
  s.name                = "erb2haml"
  s.version             = "#{ERb2Haml::VERSION}"
  s.date                = Time.now.strftime('%Y-%m-%d')
  s.summary             = "ERB to Haml view templates conversion for Rails."
  s.description         = "erb2haml gives Rails simple rake tasks to convert all ERB view templates to Haml."
  s.homepage            = "https://github.com/dhl/erb2haml"
  s.email               = [ "david@davidslab.com" ]
  s.authors             = [ "David Leung" ]
  s.platform            = Gem::Platform::RUBY
  s.license             = 'MIT'

  s.files               = %w[Gemfile Rakefile]
  s.files              += Dir.glob("{lib}/**/*")
  s.extra_rdoc_files    = %w[LICENSE README.md CHANGELOG.md]

  s.require_paths       = ["lib"]
  s.add_runtime_dependency "html2haml"
end
