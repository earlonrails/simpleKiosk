# simpleKioskController.rb
require 'rubygems'
require 'sinatra'
require 'json'
require 'mongo'

db = Mongo::Connection.new("localhost", 27047).db("foo")

# test sinatra
get '/' do
  'Hello world!'
end
 
# get all users
get '/users/' do
  col_users = db.collection('users')
  all_users = col_users.find().collect{|u| u.to_json)
  status 200
  body all_users
end

# get a user
get '/users/:name' do
  puts "hey"
  puts "#{params[:name].class} #{params[:name].inspect}"
  col_users = db.collection('users')
  my_usr = col_users.find({'userName' => params[:name]}).collect{|u| u.to_json}
  status 200
  body my_usr 
end

# update a user
post '/users/:name?*/' do
 params[:nam]
 ro = JSON.parse(request.body.string)
 puts params.inspect
 will_rtn = {'userCreate' => 'true'}  
 status 200
 body will_rtn
end

# create a user
post '/users/create/*' do
  col_users = db.collection('users')
  ro = JSON.parse(request.body.string)
  col_users.insert(ro)
  will_rtn = {'userCreate' => 'true'} 
  status 200
  body will_rtn
end
