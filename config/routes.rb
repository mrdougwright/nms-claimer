Rails.application.routes.draw do
  root 'discoveries#claim'

  devise_for :explorers, path_names: {
    sign_in: "login", sign_out: "logout", sign_up: "begin"
  }

  resources :explorers
  resources :discoveries
end
