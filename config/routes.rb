Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'contact_files#index'

  resources :contact_files, only: [:create, :new]
end
