require_relative '../services/roomba'

get '/' do
  erb :'/roombae'
end

get '/power' do 
  Roomba.power
  erb :'/roombae'
end

get '/forward' do
  Roomba.forward
  erb :'/roombae'
end

get '/left' do 
  Roomba.left
  erb :'/roombae'
end

get '/right' do
  Roomba.right
  erb :'/roombae'

get '/dance' do
  Roomba.dance
  erb :'/roombae'
end

get '/clean' do
  Roomba.clean
  erb :'/roombae'
end




