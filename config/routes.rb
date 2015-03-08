Rails.application.routes.draw do
  root 'discoveries#claim'

  # devise_for :explorers, path_names: {
  #   sign_in: "login", sign_out: "logout", sign_up: "begin"
  # }

  devise_for :explorers, skip: [:sessions], path_names: {sign_up: 'begin'}
  as :explorer do
    get 'login' => 'devise/sessions#new', :as => :new_explorer_session
    post 'login' => 'devise/sessions#create', :as => :explorer_session
    delete 'logout' => 'devise/sessions#destroy', :as => :destroy_explorer_session
  end

  resources :explorers
  resources :discoveries
end
