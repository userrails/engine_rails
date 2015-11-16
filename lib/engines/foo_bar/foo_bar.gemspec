$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "foo_bar/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "foo_bar"
  s.version     = FooBar::VERSION
  s.authors     = ["Shiv Raj Badu"]
  s.email       = ["shivrajbadu@gmail.com"]
  s.homepage    = "http://localhost:3000"
  s.summary     = "Summary of FooBar."
  s.description = "Description of FooBar."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end
