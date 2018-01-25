Rails.application.routes.draw do  
   get '/route_maps/show/:id', to: "route_maps#show", as: :route_maps_show
  #get '/events/:id', to: 'events#route_map'
  get 'home/search'
  get 'home/get_json_event'
  resources :events
  root 'home#index'
  
  get "sign_up" => "users#new", :as => "sign_up"
  resources :users
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
