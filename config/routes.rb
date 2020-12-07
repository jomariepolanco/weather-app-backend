Rails.application.routes.draw do
  resources :cities, only: [:index, :show]
  resources :user_cities, except: [:destroy]
  resources :users, except: [:destroy]

  get '/search/:name', to: 'cities#search'
  delete '/remove/:data', to: 'user_cities#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
