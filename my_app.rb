require 'sinatra/base'
require 'rubygems'
require 'pry'
require 'ap'


class MyApp < Sinatra::Base
  enable :sessions
  get '/' do
    #debugger
    binding.pry
    session[:user] = 'anonymouse'
    redirect to('/bar')
  end

  get '/:who' do
    pass unless params[:who] = 'Ken'
    "You know me"
  end

  get '/bar' do
    session[:user]
  end

  get '/*' do
    'Who you are'
  end
  run! if app_file == $0
end