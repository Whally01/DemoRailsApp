# encoding: utf-8
require 'rest-client'
require 'json'
class QuoteController < ApplicationController
	api :GET, '/load', "LOAD quote from outside "
	def load
	 	response = RestClient.get('https://api.tronalddump.io/random/quote')
	 	hash = JSON.parse(response)
	 	value = hash["value"]
	 	tags = hash["tags"]
	 	@quote = Quote.create(value:value, tags:tags)
 		render json: @quote
	end

	api :GET, '/quotes', "GET all quotes"
	def show
	 	@quote = Quote.all
	 	render json: @quote
	end
 end

