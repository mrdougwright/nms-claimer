Rails.application.routes.draw do
  root 'discoveries#claim'

  devise_for :explorers

  resources :explorers
  resources :discoveries
end
