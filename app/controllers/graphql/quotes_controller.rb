# encoding: utf-8
require 'rest-client'
require 'json'
class Graphql::QuotesController < ApplicationController
	api :GET, '/graphql/quotes', "GET all quotes GRAPHQL API"
	def show
		@quote = Quote.all
		render json: @quote
	end
end

