Rails.application.routes.draw do
  root 'application#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/games/most_popular', to: 'games#most_popular', as: 'popular_game'
  get '/consoles/most_popular', to: 'consoles#most_popular',  as: 'popular_console'

  resources :plays, only: [:create]
  resources :console_users, only: [:create]
  resources :games
  resources :consoles
  resources :users do
    resources :games, only: [:show, :index]
    resources :consoles, only: [:show, :index]
    resources :plays, only: [:new]
    resources :console_users, only: [:new]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
