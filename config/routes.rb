Rails.application.routes.draw do
  get 'home/search'
  get 'home/get_json_event'
  resources :events
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
