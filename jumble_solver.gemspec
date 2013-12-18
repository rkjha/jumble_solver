# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jumble_solver/version'

Gem::Specification.new do |spec|
  spec.name          = "jumble_solver"
  spec.version       = JumbleSolver::VERSION
  spec.authors       = ["Ramesh Jha"]
  spec.email         = ["ramesh@rameshjha.com"]
  spec.description   = %q{It can be used for solving jumble word puzzles}
  spec.summary       = %q{A jumble solver}
  spec.homepage      = "https://github.com/rkjha/jumble_solver"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
end
