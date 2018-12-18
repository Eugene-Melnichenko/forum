Rails.application.routes.draw do

  devise_for :users, path: 'users', controllers: { 
    confirmations: "users/confirmations",
    passwords: "users/passwords",
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  
  devise_for :admins, path: 'admins', controllers: { 
    registrations: "admins/registrations", 
    sessions: "admins/sessions"
  }
  
  get 'home_page/index'
  resources :films
  resources :terms

  namespace :users do
    resources :dashboards
    resources :messages
  end

  namespace :admins do
    get 'dashboards/index'
    resource :dashboards
    resources :posts
    resources :users, only: [:destroy]
  end

  root 'home_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

end
