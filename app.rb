require "./lib/person.rb"


class Birthday < Sinatra::Base
  enable :sessions

  before do
    @person = Person.instance
  end

  get "/" do
    erb(:index)
  end

  post '/greet' do
    @person = Person.create(params[:name]), params[:dob])
    redirect "/play"
  end

  run! if app_file==$0
end
