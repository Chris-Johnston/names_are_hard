# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "names_are_hard"
  spec.version       = "0.2.12"
  spec.authors       = ["Chris Johnston"]
  spec.email         = ["chjohnston@protonmail.com"]

  spec.summary       = %q{This is a theme used for the website of github user Chris-Johnston.}
  spec.homepage      = "https://github.com/Chris-Johnston/names_are_hard"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 12.3.3"
end
