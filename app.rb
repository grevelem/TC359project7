# app.rb
  require 'sinatra'
  require 'holidapi'

  class HolidayApp < Sinatra::Base
	  get '/' do
	  	params['month'] ||= 3
	  	params['year'] ||= 2015
	  	params['country'] ||="US"
	 	@holiday = HolidApi.get(month: params['month'], year: params['year'], country: params['country'])
		erb :index
	  end
  end