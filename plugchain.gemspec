# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'plugchain/version'

Gem::Specification.new do |spec|
  spec.name          = "plugchain"
  spec.version       = Plugchain::VERSION
  spec.authors       = ["lessless"]
  spec.email         = ["me@lessless.pp.ua"]
  spec.summary       = %q{TODO: Plugchain.com API wrapper.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = "http://plugchain.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
