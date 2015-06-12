$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "seven_contact/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "seven_contact"
  s.version     = SevenContact::VERSION
  s.authors     = ["rafael"]
  s.email       = ["rafael.adel20@gmail.com"]
  s.homepage    = "https://github.com:rafaeladel/seven_contact.git"
  s.summary     = "Summary of SevenContact."
  s.description = "Description of SevenContact."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.1"
  s.add_dependency "mysql2"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl_rails"
end
