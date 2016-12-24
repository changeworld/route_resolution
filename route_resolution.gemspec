# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'route_resolution/version'

Gem::Specification.new do |spec|
  spec.name          = 'route_resolution'
  spec.version       = RouteResolution::VERSION
  spec.authors       = ['Takashi Takebayashi']
  spec.email         = ['changesworlds@gmail.com']

  spec.summary       = %q{Gem for Ruby on Rails to convert routes.rb without using resource styles.}
  spec.description   = %q{route_resolution converts routes.rb to human-readable form.
    Detailed description please see the README.md.}
  spec.homepage      = 'https://github.com/changeworld/route_resolution/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'coveralls'
end
