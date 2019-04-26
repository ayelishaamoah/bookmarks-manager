require 'sinatra/base'
require_relative './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb :"bookmarks/index"
  end

  get '/add_bookmark' do
    erb :"bookmarks/add_bookmark"
  end

  post '/add' do
    Bookmarks.add_bookmark(url: params["url"], title: params["title"])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
