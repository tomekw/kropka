# encoding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "kropka/version"

Gem::Specification.new do |spec|
  spec.name          = "kropka"
  spec.version       = Kropka::VERSION
  spec.authors       = ["Tomek Wałkuski"]
  spec.email         = ["ja@jestem.tw"]
  spec.description   = %q{Manage your dotfiles}
  spec.summary       = %q{Manage your dotfiles}
  spec.homepage      = "https://github.com/tomekw/kropka"
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rainbow"
  spec.add_dependency "thor"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
