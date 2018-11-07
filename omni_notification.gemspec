$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "omni_notification/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "omni_notification"
  s.version     = OmniNotification::VERSION
  s.authors     = ["Andersen Fan"]
  s.email       = ["as181920@gmail.com"]
  s.homepage    = ""
  s.summary     = "Common notification support"
  s.description = "Create notification for any target differed by notify type"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"

  s.add_development_dependency "sqlite3"
end
