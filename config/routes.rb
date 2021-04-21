Rails.application.routes.draw do
  root 'application#home'
  resources :plays
  resources :games
  resources :consoles
  resources :users do
    resources :games, only: [:new, :edit, :show, :index]
    resources :consoles, only: [:new, :edit, :show, :index]
    resources :plays, only: [:new]
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
