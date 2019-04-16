# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bistro/version'

Gem::Specification.new do |spec|
  spec.name          = "bistro"
  spec.version       = Bistro::VERSION
  spec.authors       = ["Dev Null Productions"]
  spec.email         = ["devnullproductions@gmail.com"]
  spec.description   = %q{Bistro is a class for dealing with BInary STRuctured data}
  spec.summary       = %q{Bistro is a class for dealing with BInary STRuctured data.}
  spec.homepage      = "http://github.com/DevNullProd/bistro"
  spec.license       = "MIT"

  spec.files         = `git ls-files -- lib/*`.split("\n")
  spec.files        += %w[README.md LICENSE.txt]
  spec.executables   = `git ls-files -- bin/*`.split("\n")
  spec.test_files    = `git ls-files -- spec/*`.split("\n")
  spec.test_files   += %w[.rspec]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0"
end
