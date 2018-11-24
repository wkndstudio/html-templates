Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #static templates
	# get "/templates/*template" => "templates#show"
	get "/*template" => "templates#show"
end
