here = File.expand_path(File.dirname(__FILE__))
$:<< File.expand_path("../lib")

ENV["RAILS_ENV"] ||= 'test'
require File.join(here, "..", "vendor/gems/environment")
require 'stub_rails/config/environment'
require 'environment_configurable'
Bundler.require_env :test

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

Spec::Runner.configure do |config|
  config.include(SpecInstanceHelpers)
  config.mock_with :mocha
end
