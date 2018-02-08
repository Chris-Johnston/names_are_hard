# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "names_are_hard"
  spec.version       = "0.1.1"
  spec.authors       = ["Chris Johnston"]
  spec.email         = ["githubchrisjohnston@gmail.com"]

  spec.summary       = %q{This is a placeholder summary}
  spec.homepage      = "https://github.com/Chris-Johnston/names_are_hard"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.6"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
