desc "This task is called by the Heroku scheduler add-on"
task :update_quote => :environment do
	response = RestClient.get('https://api.tronalddump.io/random/quote')
	hash = JSON.parse(response)
	value = hash["value"]
	source = hash["source"]
	@quote = Quote.create(value:value, source:source)
 	render json: @quote
end