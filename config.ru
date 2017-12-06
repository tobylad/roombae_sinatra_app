# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)
p 'hello'
set :app_file, __FILE__
set :bind, '127.0.0.1'
set :port, 565656

run Sinatra::Application
