# app/jobs/test_job.rb
require 'rest-client'
require 'json'

class TestJob < ActiveJob::Base
  def perform
  	response = RestClient.get('https://api.tronalddump.io/random/quote')
	hash = JSON.parse(response)
	value = hash["value"]
	tags = hash["tags"]
	@quote = Quote.create(value:value, tags:tags)
 	render json: @quote
  end
end