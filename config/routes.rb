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
  
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
