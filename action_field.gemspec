$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "action_field/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "action_field"
  s.version     = ActionField::VERSION
  s.authors     = ["Jonathan Wylliem"]
  s.email       = ["jonathan.wylliem@jurnal.id"]
  s.homepage    = "https://github.com/icecold21/actionfield"
  s.summary     = "Brave soldiers marching into action field."
  s.description = "Call action on ActiveRecord Fields"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "bundler", "~> 1.8"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "rake", "~> 10.0"
end
