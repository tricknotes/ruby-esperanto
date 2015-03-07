# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'esperanto/version'

Gem::Specification.new do |spec|
  spec.name          = 'esperanto'
  spec.version       = Esperanto::VERSION
  spec.authors       = ['Ryunosuke SATO']
  spec.email         = ['tricknotes.rs@gmail.com']
  spec.summary       = %q{esperanto for Ruby.}
  spec.description   = %q{esperanto for Ruby.}
  spec.homepage      = 'https://github.com/tricknotes/ruby-esperanto'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'esperanto-source', '~> 0.6.17.3'
  spec.add_dependency 'execjs'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'minitest-power_assert'
end
