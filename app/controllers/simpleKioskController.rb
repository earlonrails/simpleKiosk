# simpleKioskController.rb
require 'rubygems'
require 'sinatra'
require 'json'
require 'mongo'

db = Mongo::Connection.new("localhost", 27047).db("foo")

# test sinatra
get '/' do
  'Simple Kiosk App'
end
 
# get all users
get '/users/' do
  content_type :json
  col_users = db.collection('users')
  all_users = col_users.find().collect{|u| u }
  status 200
  all_users.to_json
end

# get a user2
get '/users/:name' do
  content_type :json
  col_users = db.collection('users')
  my_usr = col_users.find({'userName' => params[:name]}).collect{|u| u.to_json}
  status 200
  body my_usr 
end

# update a user
post '/users/:name?*/' do
 content_type :json
 params[:name]
end

# create a user
post '/users/create/*' do
  content_type :json
  col_users = db.collection('users')
  ro = JSON.parse(request.body.string)
  col_users.insert(ro)
  will_rtn = { 'userCreate' => 'true' } 
  status 200
  body will_rtn
end

