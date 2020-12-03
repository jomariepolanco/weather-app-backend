Rails.application.routes.draw do
  resources :cities
  resources :user_cities, except: [:destroy]
  resources :users

  get '/search/:name', to: 'cities#search'
  delete '/remove/:userCityData', to: 'user_cities#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
