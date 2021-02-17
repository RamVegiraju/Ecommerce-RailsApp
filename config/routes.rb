Rails.application.routes.draw do
  resources :shoppingitems
  #get 'home/index'
  #making this the home page itself
  get 'home/about'
  root 'home#index'
end
