Rails.application.routes.draw do
  namespace :petri_dish do
    resources :request_specimens, only: [:index, :show]
    resources :query_specimens, only: [:index, :show]
  end
  root "posts#index"
  resources :posts
end
