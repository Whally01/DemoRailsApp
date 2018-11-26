Rails.application.routes.draw do
	get '/load', to: 'quote#load'
	get '/all', to: 'quote#show'
end
