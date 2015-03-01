Rails.application.routes.draw do
  root 'discoveries#claim'

  resources :discoveries
  resources :explorers
end
