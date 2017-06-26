Rails.application.routes.draw do
	resources :drinks
	root 'drinks#index'
	get "drinks/new" => 'drinks#new'
	post "/drinks" => 'drinks#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
