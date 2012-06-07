# Sinatra Foursquare Application
require 'rubygems'
require 'sinatra'

#Displays the initial form
get '/' do  
	erb :form  
end

#Handles the query back and sends the data
#off to be processed to the API
post '/' do
	@query = params[:query]
	@city = params[:city]
	@limit = params[:limit]
	@radius = params[:radius]
	erb :tempSearch
end  