VMC_APP_NAME = "cf-rake-sinatra"

require 'rspec/core/rake_task'
require 'cucumber/rake/task'

$:.unshift(File.dirname(__FILE__))

def run(cmd, msg)
  `#{cmd}`
  if $?.exitstatus != 0
    puts msg
    exit 1
  end
end

task :default => [:run]

desc "run sinatra app locally"
task :run => "Gemfile.lock" do
  require 'simpleKioskController.rb'
  Sinatra::Application.run!
end

desc "run specs"
RSpec::Core::RakeTask.new(:spec)

namespace :coverage do
  desc "run rspec code coverage"
  task :spec do
    ENV['COVERAGE'] = "true"
    Rake::Task[:spec].execute
  end
end
