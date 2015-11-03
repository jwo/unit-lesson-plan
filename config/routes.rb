Rails.application.routes.draw do
  root 'dashboard#show'

  resources :units
  resources :lessons


end
