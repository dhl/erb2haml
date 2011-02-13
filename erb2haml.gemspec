# encoding: utf-8
require File.expand_path("../lib/erb2haml/version", __FILE__)

Gem::Specification.new do |s|
  s.name                = "erb2haml"
  s.version             = "#{ERb2Haml::VERSION}"
  s.date                = Time.now.strftime('%Y-%m-%d')
  s.summary             = "Bulk ERB HTML to Haml conversion for Rails."
  s.description         = "Simple rake task to bulk covert ERB HAML files in a Rails app to Haml."
  s.homepage            = "http://github.com/dhl/erb2haml"
  s.email               = "david@davidslab.com"
  s.authors             = ['David Leung']
  s.platform            = Gem::Platform::RUBY

  s.files               = %w[Gemfile Rakefile]
  s.files              += Dir.glob("{lib}/**/*")
  s.extra_rdoc_files    = %w[LICENSE README.md]

  s.require_paths       = ["lib"]
  s.add_runtime_dependency "haml"
  s.add_runtime_dependency "hpricot"
  s.add_runtime_dependency "ruby_parser"
end

