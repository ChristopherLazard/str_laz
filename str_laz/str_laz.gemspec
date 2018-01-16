
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str_laz/version"

Gem::Specification.new do |spec|
  spec.name          = "str_laz"
  spec.version       = StrLaz::VERSION
  spec.authors       = ["Christopher Lazard"]
  spec.email         = ["christopher.l.lazard@gmail.com"]

  spec.summary       = "Learning about Gems"
  spec.description   = "Learning how to publish Gems"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
