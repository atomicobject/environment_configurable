# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{environment_configurable}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Atomic Object"]
  s.date = %q{2010-03-15}
  s.description = %q{A library that makes environment dependent configuration easy in rails.}
  s.email = %q{github@atomicobject.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.md"
  ]
  s.files = [
    "LICENSE",
     "Rakefile",
     "lib/environment_configurable.rb"
  ]
  s.homepage = %q{http://github.com/atomicobject/environment_configurable}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A library that makes environment dependent configuration easy in rails.}
  s.test_files = [
    "spec/environment_configurable_spec.rb",
     "spec/spec_helper.rb",
     "spec/stub_rails/app/controllers/application_controller.rb",
     "spec/stub_rails/app/helpers/application_helper.rb",
     "spec/stub_rails/config/boot.rb",
     "spec/stub_rails/config/environment.rb",
     "spec/stub_rails/config/environments/development.rb",
     "spec/stub_rails/config/environments/production.rb",
     "spec/stub_rails/config/environments/test.rb",
     "spec/stub_rails/config/initializers/backtrace_silencers.rb",
     "spec/stub_rails/config/initializers/inflections.rb",
     "spec/stub_rails/config/initializers/mime_types.rb",
     "spec/stub_rails/config/initializers/new_rails_defaults.rb",
     "spec/stub_rails/config/initializers/session_store.rb",
     "spec/stub_rails/config/routes.rb",
     "spec/stub_rails/db/seeds.rb",
     "spec/stub_rails/test/performance/browsing_test.rb",
     "spec/stub_rails/test/test_helper.rb",
     "spec/support/stub_helpers.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 2.3.0"])
    else
      s.add_dependency(%q<rails>, [">= 2.3.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 2.3.0"])
  end
end

