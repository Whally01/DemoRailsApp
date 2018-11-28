Rails.application.routes.draw do
  apipie
	get '/load', to: 'quotes#load'
	resources :quotes
	
	namespace :rest do
		get 'quotes', to: 'quotes#show'
	end

	namespace :json do
		get 'quotes', to: 'quotes#show'
	end

	namespace :graphql do
		get 'quotes', to: 'quotes#show'
	end
	
end
