$:<< "vendor/gems/gems/rspec-1.2.9/lib" 

require 'spec/rake/spectask'

task :default => [:spec]

desc "Executes bundler and grabs necessary dependencies to run tests"
task "setup:contrib" do
  system("gem bundle")
end

Spec::Rake::SpecTask.new do |t|
  t.spec_files = "spec/**/*_spec.rb"
  t.spec_opts = ["-f s -c"]
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "environment_configurable"
    s.summary = "A library that makes environment dependent configuration easy using YAML."
    s.description = "A library that makes environment dependent configuration easy using YAML."
    s.email = "github@atomicobject.com"
    s.homepage = "http://github.com/atomicobject/environment_configurable"
    s.authors = ["Atomic Object"]
    s.executables = []
    s.files =  FileList["lib/**/*.rb", "LICENSE", "Rakefile"]
    s.test_files = FileList["spec/**/*.rb"]
    s.add_dependency "rails", ">=2.3.0"
  end
  
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
