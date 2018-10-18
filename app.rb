require "./lib/person.rb"
require "sinatra/base"


class Birthday < Sinatra::Base
  enable :sessions

  before do
    @person = Person.instance
  end

  get "/" do
    erb :index
  end

  post '/check' do
    @person = Person.create(params[:name], params[:day],params[:month],params[:year])
    if @person.isBirthday
      redirect "/greet"
    else
      redirect "/wait"
    end
  end

  get "/greet" do
    @name = @person.get_name
    @age = @person.get_age
    erb :greet
  end

  get "/wait" do
    @name = @person.get_name
    @wait = @person.get_daystobirthday
    @age = @person.get_age
    erb :waitdays
  end

  run! if app_file==$0

end
