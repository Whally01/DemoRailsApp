# encoding: utf-8
require 'rest-client'
require 'json'
class Json::QuotesController < ApplicationController
	
	api :GET, '/json/quotes', "GET all quotes JSON API"
	def show
	 	@quote = Quote.all
	 	render json: @quote
	end
end


