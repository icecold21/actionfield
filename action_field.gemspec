$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "action_field/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "action_field"
  s.version     = ActionField::VERSION
  s.authors     = ["Jonathan Wylliem"]
  s.email       = ["jonathan.wylliem@jurnal.id"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ActionField."
  s.description = "TODO: Description of ActionField."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end
