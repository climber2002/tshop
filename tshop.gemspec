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
  s.required_ruby_version = '>= 2.0.0'
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency "rails", "~> 4.1.4"

  s.add_runtime_dependency 'bootstrap-sass',             '~> 3.2.0'
  s.add_runtime_dependency 'bootstrap-kaminari-views',   '~> 0.0.3'
  s.add_runtime_dependency 'spree_core',                 '~> 2.3.0'
  s.add_runtime_dependency 'font-awesome-rails'

  # This is technically still being used for the controllers, and possibly some views.
  # Javascript was being used also, but I've moved that over to fix specs.
  # Will drop this after they've been ported, but I'd rather just merge this directly into Spree.
  s.add_runtime_dependency 'spree_frontend',           '~> 2.3.0'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "3.0.1"
  s.add_development_dependency "capybara", "2.3.0"
  s.add_development_dependency 'coffee-rails'
end
