# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'moji_nested_hash/version'

Gem::Specification.new do |spec|
  spec.name          = 'moji_nested_hash'
  spec.version       = MojiNestedHash::VERSION
  spec.authors       = ['mojihige']
  spec.email         = ['ayatakayuram2605@gmail.com']

  spec.summary       = 'Extend operations on nested hashes'
  spec.description   = 'Extend operations on nested hashes'
  spec.homepage      = 'https://github.com/mojihige'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
