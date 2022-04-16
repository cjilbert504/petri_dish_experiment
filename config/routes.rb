Rails.application.routes.draw do
  namespace :petri_dish do
    resources :request_specimens, only: [:index, :show]
  end
  root "posts#index"
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
