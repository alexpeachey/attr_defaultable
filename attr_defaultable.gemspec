# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'attr_defaultable/version'

Gem::Specification.new do |spec|
  spec.name          = 'attr_defaultable'
  spec.version       = AttrDefaultable::VERSION
  spec.authors       = ['alexpeachey']
  spec.email         = ['alex.peachey@originate.com']
  spec.summary       = %q{An additional attr macro for default values.}
  spec.description   = %q{An additional attr macro for default values.}
  spec.homepage      = 'https://github.com/Originate/attr_defaultable'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
