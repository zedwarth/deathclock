require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require 'json'
require 'omniauth'
require 'omniauth-twitter'
require 'twitter'

class Result < ActiveRecord::Base
end

configure do
  set :sessions, true
  set :inline_templates, true
end
use OmniAuth::Builder do
  provider :twitter, $twitter_consumer_key, $twitter_consumer_secret
end

client = Twitter::REST::Client.new do |config|
    config.consumer_key        = $twitter_consumer_key
    config.consumer_secret     = $twitter_consumer_secret
    config.access_token        = $twitter_access_token
    config.access_token_secret = $twitter_access_token_secret
  end

get '/' do

  erb :index
end

post '/results' do

  @title = "Death Results"
  puts params
  @name = params[:name]
  @gender = params[:gender]
  @current_age = params[:current_age]
  @location = params[:location]
  @diet = params[:diet]
  @outlook = params[:outlook]
  @sleep = params[:sleep]
  @death_age = rand(25..90)

  @result = Result.create(name: @name, gender: @gender, current_age: @current_age,
    location: @location, diet: @diet, outlook: @outlook,
    sleep: @sleep, death_age: @death_age)

  @results = Result.order("created_at DESC")

  erb :results
end

get '/results' do
  @results = Result.order("created_at DESC")
  @title = "Death Results"

  erb :results
end

get '/auth/:provider/callback' do
  # response = JSON.pretty_generate(request.env['omniauth.auth'])
  response = request.env['omniauth.auth']
  puts response['credentials']['token']
  $twitter_access_token = response['credentials']['token']
  $twitter_access_token_secret = response['credentials']['secret']
  puts $twitter_access_token
  puts $twitter_access_token_secret
  client_new = Twitter::REST::Client.new do |config|
    config.consumer_key        = $twitter_consumer_key
    config.consumer_secret     = $twitter_consumer_secret
    config.access_token        = $twitter_access_token
    config.access_token_secret = $twitter_access_token_secret
  end
  puts client_new

  @results = Result.order("created_at DESC").first

  if @results
    # client_new.update_with_media("I'm gonna die!", File.new("http://imgur.com/75Jr3.jpg"))
    client_new.update("I'm going to die when I'm #{@results.death_age}. What about you? http://meetyourmaker.herokuapp.com/ #MKS")
  end



  erb "<h1>#{params[:provider]}</h1>
       <pre>#{JSON.pretty_generate(request.env['omniauth.auth'])}</pre>"



end

get '/auth/failure' do
  erb "<h1>Authentication Failed:</h1><h3>message:<h3> <pre>#{params}</pre>"
end

get '/auth/:provider/deauthorized' do
  erb "#{params[:provider]} has deauthorized this app."
end

get '/protected' do
  throw(:halt, [401, "Not authorized\n"]) unless session[:authenticated]
  erb "<pre>#{request.env['omniauth.auth'].to_json}</pre><hr>
       <a href='/logout'>Logout</a>"
end

get '/logout' do
  session[:authenticated] = false
  redirect '/'
end

get '/graph' do
	erb :graph
end

helpers do
  def title
    if @title
      "#{@title}"
    else
      "Welcome."
    end
  end
end
