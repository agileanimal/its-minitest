# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'its-minitest/version'

Gem::Specification.new do |gem|
  gem.name          = "its-minitest"
  gem.version       = ItsMinitest::VERSION
  gem.authors       = ["Mark Madsen"]
  gem.email         = ["mark@agileanimal.com"]
  gem.description   = %q{Adds support for its syntax to minitest.}
  gem.summary       = %q{Adds support for its syntax to minitest.}
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "minitest"
  gem.add_development_dependency "rake"
end
