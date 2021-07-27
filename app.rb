require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/new" do
  erb :new
end

post "/restaurants" do
  name = params[:name]
  address = params[:address]

  Restaurant.create(name: name, address: address)

  redirect ("/")
end

get "/:id" do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end
