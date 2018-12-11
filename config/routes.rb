Rails.application.routes.draw do

  devise_for :users, path: 'users', controllers: { 
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords",
    confirmations: "users/confirmations"
  }
  
  devise_for :admins, path: 'admins', controllers: { 
    sessions: "admins/sessions",
    registrations: "admins/registrations", 
  }
  
  get 'home_page/index'

  namespace :users do
    resources :dashboards, only: [:index]
  end

  namespace :admins do
    resource :dashboards, only: [:edit, :update]
  end

  root 'home_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

end
