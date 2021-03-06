# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tdd/demo/version'

Gem::Specification.new do |spec|
  spec.name          = 'tdd-demo'
  spec.version       = Tdd::Demo::VERSION
  spec.authors       = ['pikesley']
  spec.email         = ['github@orgraphone.org']
  spec.summary       = %q{Test-Driven Development, illustrated.}
  spec.description   = %q{Test-Driven Development, illustrated.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'guard-rspec', '~> 4.6'
  spec.add_development_dependency 'coveralls', '~> 0.8'
end
