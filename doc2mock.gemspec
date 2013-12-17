# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'doc2mock/version'

Gem::Specification.new do |spec|
  spec.name          = "doc2mock"
  spec.version       = Doc2mock::VERSION
  spec.authors       = ["jurre"]
  spec.email         = ["jurrestender@gmail.com"]
  spec.description   = %q{Convert RSpec API Doc to Angular.js fixtures}
  spec.summary       = %q{Convert RSpec API Doc to Angular.js fixtures}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 1.9.1"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
