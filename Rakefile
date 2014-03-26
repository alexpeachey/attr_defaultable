require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :extended_console do
  require 'irb'
  require 'irb/completion'
  require 'extend_attr_defaultable'
  ARGV.clear
  IRB.start
end

task :console do
  require 'irb'
  require 'irb/completion'
  require 'attr_defaultable'
  ARGV.clear
  IRB.start
end