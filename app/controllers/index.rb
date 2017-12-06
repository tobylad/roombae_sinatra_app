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
  Roomba.left(5)
  erb :'/roombae'
end

get '/pause' do
  Roomba.pause
  erb :'/roombae'
end

get '/clean' do
  Roomba.clean
  erb :'/roombae'
end




