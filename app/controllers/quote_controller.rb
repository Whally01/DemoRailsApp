# encoding: utf-8
require 'rest-client'
require 'json'
class QuoteController < ApplicationController
	def load
	 	response = RestClient.get('https://api.tronalddump.io/random/quote')
	 	hash = JSON.parse(response)
	 	value = hash["value"]
	 	source = hash["source"]
	 	@quote = Quote.create(value:value, source:source)
 		render json: @quote
	end

	def show
	 	@quote = Quote.first
	 	puts @quote 
	 	render json: @quote
	end
 end

