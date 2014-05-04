Gem::Specification.new do |s|
  s.name        = "meddle"
  s.version     = "0.2.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nathaniel Jones"]
  s.email       = ["nj@third.io"]
  s.homepage    = "http://github.com/nthj/meddle"
  s.summary     = "Build Modal Wizards in Rails"
  s.description = "View helpers for easily building tabbed modal wizards in Rails"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "meddle"

  s.add_dependency("actionpack", ">= 4")
  s.add_development_dependency("sqlite3", ">= 0")
  s.add_development_dependency("rspec", ">= 2.0.0")

  s.files        = Dir.glob("{lib}/**/*") + %w(README.md LICENSE.txt)
  s.require_path = 'lib'
end
