require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models.rb'

enable :sessions

helpers do
    def current_user
        User.find_by(id: session[:user])
    end
end

get '/' do
  @users = User.all
  erb :top
end

get '/users' do
  @users = User.all
  erb :user_list
end

get '/about' do
    erb :about
end

get '/signin' do
    erb :signin
end

post '/signin' do
    user = User.create(
        name: params[:name],
        mail: params[:mail],
        password: params[:password]
    )
    if user.persisted?
        session[:user] = user.id
    end
    redirect '/'
end

get '/login' do
    erb :login
end

post '/login' do
    user = User.find_by(mail: params[:mail])
    if user && user.authenticate(params[:password])
        session[:user] = user.id
        session[:notice] = "ログインに成功しました"
        redirect '/mypage'
    else
        session[:alert] = "ログインに失敗しました"
        redirect '/login'
    end
    session.delete(:notice)  # セッション変数をクリア
    session.delete(:alert)  # セッション変数をクリア
end

get '/mypage' do
    @users = current_user # 現在のユーザーを取得
    erb :mypage
end