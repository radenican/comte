# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "comte"
  spec.version       = "0.1.0"
  spec.authors       = ["Mughie Ams"]
  spec.email         = ["mughieams24@gmail.com"]

  spec.summary       = %q{Comte is a minimal Jekyll theme based on Tale by Chester How.}
  spec.homepage      = "https://github.com/mughieams/comte"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "4.0"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.13"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.6"

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "html-proofer", "~> 3.15"
end
