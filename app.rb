require 'sinatra/base'
require './lib/bookmark'
require 'pg'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Bookmark Manager'
    erb :index
  end

  post '/add_bookmark' do
    Bookmark.add_bookmark(params[:title], params[:url])
    redirect '/bookmark_list'
  end

  get '/bookmark_list' do
    @list = Bookmark.all
    erb :bookmark_list
  end

end
