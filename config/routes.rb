Rails.application.routes.draw do
  resources :reviews
  resources :beers
  resources :breweries
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# rails g resource Beer name:string type:string description:string 