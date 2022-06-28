Rails.application.routes.draw do
  get "user/index"
  get "user/new"
  get "user/create"
  get "invitations/index"
  get "invitations/new"
  get "invitations/create"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "mainpages#index"
end
