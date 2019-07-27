lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "labeled_range/version"

Gem::Specification.new do |spec|
  spec.name          = "labeled_range"
  spec.version       = LabeledRange::VERSION
  spec.authors       = ["Toru YAGI"]

  spec.summary       = %q{Label each range of value.}
  spec.homepage      = "https://github.com/negito6"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'minitest'
end
