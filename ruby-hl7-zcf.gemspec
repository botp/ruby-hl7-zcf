# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hl7/zcf/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-hl7-zcf"
  spec.version       = HL7::ZCF::VERSION
  spec.authors       = ["Romain CLAVEL"]
  spec.email         = ["romain@clavel.io"]
  spec.summary       = %q{Provides a custom ZCF segment to the ruby-hl7 gem.}
  spec.description   = %q{ZCF is a custom segment commonly used to define custom fields}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^spec/}) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruby-hl7", "~> 1.1"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
