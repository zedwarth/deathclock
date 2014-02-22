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

post '/' do
  puts params
  @names = params[:name]
  @gender = params[:gender]
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
  client_new.update("testing!")

  erb "<h1>#{params[:provider]}</h1>
       <pre>#{JSON.pretty_generate(request.env['omniauth.auth'])}</pre>"

  # client.update_with_media("I'm gonna die!", File.new("http://mitchysweb.wikispaces.com/file/view/cute-sad-kitten04.jpg/102015109/cute-sad-kitten04.jpg"))

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

helpers do
  def title
    if @title
      "#{@title}"
    else
      "Welcome."
    end
  end
end

