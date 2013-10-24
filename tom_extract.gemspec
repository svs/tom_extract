# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tom_extract/version'

Gem::Specification.new do |spec|
  spec.name          = "tom_extract"
  spec.version       = TomExtract::VERSION
  spec.authors       = ["svs"]
  spec.email         = ["svs@svs.io"]
  spec.description   = %q{Extract TomDoc from a source file}
  spec.summary       = %q{Does what it says on the tin.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # spec.add_dependency "sexp_info"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"


end
