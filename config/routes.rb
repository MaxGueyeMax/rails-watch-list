Rails.application.routes.draw do
  root to: "lists#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[index new create show update destroy edit]
  resources :bookmarks, only: %i[new create]
end
