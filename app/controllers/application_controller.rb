
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get '/articles/new' do
    erb :new
  end



  post '/articles' do
<<<<<<< HEAD
    article = Article.create(title: params[:title], content: params[:content])
    redirect "/articles/#{article.id}"
=======
    #binding.pry
    Article.create(title: params[:title], content: params[:content])
    @articles = Article.all
    erb :index
    # redirect "/articles/#{article.id}"
>>>>>>> 6370c6746006908ad921fd8a69dd93a1d3cb6352
  end

  get '/articles/:id' do
    @article = Article.find("#{article.id}")
    erb :show
  end
end
