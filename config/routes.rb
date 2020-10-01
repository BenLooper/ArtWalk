Rails.application.routes.draw do\

  #sign in 
  get '/sign_in', to: "sessions#sign_in"
  post '/sessions', to: "sessions#create"
  delete '/sessions', to: "sessions#destroy"

  #user specific pages 
  get '/:id/feed', to: 'users#feed', as: "feed"
  get '/:id/activity', to: 'users#activity', as: "activity"
  
  #follow someone
  post "/users/:id", to: "users#back", as: "back"

  #unfollow someone
  post "users/:id/forget", to: "users#forget", as: "forget"
  
  resources :comments
  resources :slaps
  resources :snaps
  resources :genres
  resources :posts
  resources :users

end
