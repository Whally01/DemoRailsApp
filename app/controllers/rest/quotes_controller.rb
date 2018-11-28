# encoding: utf-8
require 'rest-client'
require 'json'
class Rest::QuotesController < ApplicationController
	api :GET, '/rest/quotes', "GET all quotes REST API"
	def show
		@quote = Quote.all
		render json: @quote
	end
end

