require File.expand_path(File.dirname(__FILE__) + "/config/boot")
require 'sinatra/activerecord/rake'
begin
  require "rspec/core/rake_task"
  desc "Run specs"
  task :spec_fast do
    RSpec::Core::RakeTask.new(:spec_fast) do |t|
      t.pattern = './spec/fast/**/*_spec.rb'
    end
  end
  task :spec_slow do
    RSpec::Core::RakeTask.new(:spec_slow) do |t|
      t.pattern = './spec/slow/**/*_spec.rb'
    end
  end
  task :spec do
    RSpec::Core::RakeTask.new(:spec) do |t|
      t.pattern = './spec/**/*_spec.rb'
    end
  end
rescue LoadError

end

task :console do
  sh "irb -rubygems -r ./config/boot.rb"
end
