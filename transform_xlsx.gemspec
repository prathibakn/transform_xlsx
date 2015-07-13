# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'transform_xlsx/version'

Gem::Specification.new do |spec|
  spec.name          = "transform_xlsx"
  spec.version       = TransformXlsx::VERSION
  spec.authors       = ["Prathiba Kn"]
  spec.email         = ["prathiba_kn@gmail.com"]
  spec.description   = %q{Transforms Excelx file into Hash Or Json objects}
  spec.summary       = %q{Transforms 1D and 2D excelx file into Hash or Json objects}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "roo"
  spec.add_dependency "json"
end
