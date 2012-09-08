Caminar::Application.routes.draw do
  
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to=> "site#index"

  # SITE CONTROLLER
  match '/new', to: "site#new", as: "email"
  match '/:event', to: "site#index", as: "index"
end
