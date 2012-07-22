require 'spec_helper'

describe "Simple Kiosk" do
  it "should respond to GET" do
    get '/'
    last_response.should be_ok
  end

  it "should return an array of all users" do
    get '/users/'
    last_response.should be_ok
  end

  it "should return an array of all users named bill" do
    get '/users/bill'
    last_response.should be_ok
  end

  it "should update user named bill with his new favoriteColor" do
    get '/users/bill?FavoriteColor=red'
    last_response.should be_ok
  end

  it "should create a new user" do
    get '/users/bill?FavoriteColor=red'
    last_response.should be_ok
  end

  it "should delete a user" do
    get '/users/bill?FavoriteColor=red'
    last_response.should be_ok
  end
end
