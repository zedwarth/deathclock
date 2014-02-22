require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require 'shotgun'

class Result < ActiveRecord::Base
end

get '/' do

  erb :index
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