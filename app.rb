require 'sinatra'
require 'sinatra/activerecord'
require './environments'

class Result < ActiveRecord::Base
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

helpers do
  def title
    if @title
      "#{@title}"
    else
      "Welcome."
    end
  end
end