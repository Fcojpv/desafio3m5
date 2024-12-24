Rails.application.routes.draw do
  resources :movies, only: [:index, :new, :create]
  
  # Rutas explícitas para Serie
  get '/series', to: 'serie#index', as: 'series'
  get '/series/new', to: 'serie#new', as: 'new_serie'
  post '/series', to: 'serie#create', as: 'series_create'
  
  resources :documentary_films, only: [:index, :new, :create]

  # Defines the root path route ("/")
  root "movies#index"
end
