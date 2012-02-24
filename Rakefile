require 'rake/testtask'

task :spec do
  Rake::TestTask.new do |t|
    t.pattern = './spec/**/*_spec.rb'
  end
end

task :console do
  sh "irb -rubygems -r ./config/boot.rb"
end
