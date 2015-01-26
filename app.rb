# app.rb
require 'sinatra'

class MyWebApp < Sinatra::Base
	get '/' do
		"Welcome to the webapp of DOOM, where the copyright is always up to date! Copyright 2015-#{ Time.now.year } Emily Grevel."
	end
end