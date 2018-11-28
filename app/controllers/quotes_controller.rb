# encoding: utf-8
require 'rest-client'
require 'json'
class QuotesController < ApplicationController
	# api :GET, '/load', "LOAD quote from outside "
	def load
	 	response = RestClient.get('https://api.tronalddump.io/random/quote')
	 	hash = JSON.parse(response)
	 	value = hash["value"]
	 	tags = hash["tags"]
	 	@quote = Quote.create(value:value, tags:tags)
 		render json: @quote
	end

	# api :GET, '/json/quotes', "GET all quotes JSON API"
	# def show
	#  	@quote = Quote.all
	#  	render json: @quote
	# end

	# api :GET, '/rest/quotes', "GET all quotes REST API"
	# def show
	#  	@quote = Quote.all
	#  	render json: @quote
	# end

	# api :GET, '/graphql/quotes', "GET all quotes GRAPHQL API"
	# def show
	#  	@quote = Quote.all
	#  	render json: @quote
	# end
 end

