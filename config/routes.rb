Rails.application.routes.draw do
  get '/sign_in', to: "sessions#sign_in"
  post '/sessions', to: "sessions#create"
  delete '/sessions', to: "sessions#destroy"
  
  resources :comments
  resources :slaps
  resources :snaps
  resources :genres
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
