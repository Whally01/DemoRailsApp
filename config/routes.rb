Rails.application.routes.draw do
  apipie
	get '/load', to: 'quote#load'
	get '/quotes', to: 'quote#show'
end
