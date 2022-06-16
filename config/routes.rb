Rails.application.routes.draw do
  resources :archives
  resources :archive_types

  get '/subcategories', to: 'archive_types#subcategories'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
