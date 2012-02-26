require File.expand_path(File.dirname(__FILE__) + "/config/boot")
require 'sinatra/activerecord/rake'
begin
  require "rspec/core/rake_task"
  desc "Run specs"
  task :spec do
    RSpec::Core::RakeTask.new(:spec) do |t|
      t.pattern = './spec/**/*_spec.rb'
    end
  end
  task :integration do
    RSpec::Core::RakeTask.new(:integration) do |t|
      t.pattern = './spec_integration/**/*_spec.rb'
    end
  end
  task :tests do
    RSpec::Core::RakeTask.new(:tests) do |t|
      t.pattern = './spec*/**/*_spec.rb'
    end
  end
rescue LoadError

end

task :console do
  sh "irb -rubygems -r ./config/boot.rb"
end
