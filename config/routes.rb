Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resources :form_tag_users, only: [:new, :create, :show]
  resources :form_for_users, except: [:destroy, :index]
end
