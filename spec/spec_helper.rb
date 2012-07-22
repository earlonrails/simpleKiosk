#!/usr/bin/env ruby
$mongod_pid = Process.spawn("mongod --port 27047 --rest --dbpath=$SIMPLE_KIOSK_MONGO")
APP_ROOT = "#{File.dirname(File.dirname(__FILE__))}" unless defined?(APP_ROOT)
$jasmine_pid = Process.spawn("adl -nodebug #{APP_ROOT}/application_spec.xml")
if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

require File.join(File.dirname(__FILE__), '..', 'app/controllers/simpleKioskController.rb')

require 'sinatra'
require 'rack/test'

# setup test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.after(:suite) do
    Process.kill("SIGTERM", $mongod_pid)
  end
  config.include Rack::Test::Methods
end

