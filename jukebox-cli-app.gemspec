Gem::Specification.new do |spec|
  spec.name          = "jukebox-cli-app"
  spec.version       = "0.1.0"
  spec.authors       = ["msosborne3"]
  spec.email         = ["msosborne@ymail.com"]

  spec.summary       = "View concerts in the Memphis area"
  spec.homepage      = "https://github.com/msosborne3/jukebox-cli-app"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
