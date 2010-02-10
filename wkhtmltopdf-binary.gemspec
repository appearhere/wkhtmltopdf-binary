# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wkhtmltopdf/binary/version'

Gem::Specification.new do |spec|
  spec.name          = "wkhtmltopdf-binary"
  spec.version       = Wkhtmltopdf::Binary::VERSION
  spec.authors       = ["Chris Lowder", "Research Information Systems", "The University of Iowa"]
  spec.email         = ["chris@appearhere.co.uk", "vpr-ris-developers@iowa.uiowa.edu", "mcollas@aconex.com"]
  spec.summary       = %q{ wkhtmltopdf binaries }
  spec.description   = %q{ wkhtmltopdf binaries }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

