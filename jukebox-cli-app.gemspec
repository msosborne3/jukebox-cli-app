Gem::Specification.new do |spec|
  spec.name          = "jukebox-cli-app"
  spec.version       = "0.1.0"
  spec.authors       = ["msosborne3"]
  spec.email         = ["msosborne@ymail.com"]

  spec.summary       = "View concerts in the Memphis area"
  spec.homepage      = "https://github.com/msosborne3/jukebox-cli-app"
  spec.license       = "MIT"


  spec.files         = ["lib/jukebox.rb",
  "lib/jukebox/cli.rb",
  "lib/jukebox/concert.rb"]
  spec.executables   = ["jukebox"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end
