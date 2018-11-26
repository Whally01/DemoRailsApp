# app/jobs/test_job.rb
require 'rest-client'
require 'json'

class TestJob < ActiveJob::Base
  def perform
  	response = RestClient.get('https://api.tronalddump.io/random/quote')
	hash = JSON.parse(response)
	value = hash["value"]
	source = hash["source"]
	@quote = Quote.create(value:value, source:source)
  end
end