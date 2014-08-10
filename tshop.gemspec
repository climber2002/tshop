$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tshop/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tshop"
  s.version     = Tshop::VERSION
  s.authors     = ["Andy Wang"]
  s.email       = ["climber2002@gmail.com"]
  s.homepage    = "http://github.com/climber2002/tshop"
  s.summary     = "A variant of Spree frontend that utilizes Bootstrap"
  s.description = "A variant of Spree frontend that utilizes Bootstrap"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "3.0.1"
  s.add_development_dependency "capybara", "2.3.0"
end
