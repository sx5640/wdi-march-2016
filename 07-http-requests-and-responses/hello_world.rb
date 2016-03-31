require 'sinatra'

get '/' do
  "Hello World"
end

get '/time' do
  "The current time is #{Time.now.ctime}"
end

get '/name/matt' do
  "MATT"
end

get '/name/mina' do
  "MINA"
end

get '/name/:student' do
  "Hey the params are #{params.inspect}"
end

get '/dogs/:breed/:colour/:name' do
  "I own a #{params[:breed]} who is #{params[:colour]} named #{params[:name]}"
end

get '/name/matt' do
  "Matt's Doppelganger"
end

get '/todos' do
  @todos = ["Buy a corgi", "Wash said corgi", "Walk the dog"]
  @result = 2 + 9
  erb :index
end
