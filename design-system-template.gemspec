# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "design-system-template"
  spec.version       = "0.1.0"
  spec.authors       = ["Martin Svoboda"]
  spec.email         = ["martin.svoboda@gmail.com"]

  spec.summary       = "Design System Template is Jekyll theme and  boilerplate for creating and documenting your principles, style guides and patterns for your organization's design system."
  spec.homepage      = "https://github.com/martinsvoboda/design-system-template"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
