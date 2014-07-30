# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'studio_grep/version'

Gem::Specification.new do |spec|
  spec.name          = "studio_grep"
  spec.version       = StudioGrep::VERSION
  spec.authors       = ["Naotoshi Seo"]
  spec.email         = ["sonots@gmail.com"]
  spec.description   = %q{A sintra app which greps files under a directory}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/sonots/studio_grep"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec", "~> 3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "dotenv"
  spec.add_runtime_dependency "foreman"
  spec.add_runtime_dependency "sinatra"
  spec.add_runtime_dependency 'slim'
  spec.add_runtime_dependency "unicorn"
end
