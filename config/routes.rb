Rails.application.routes.draw do
   get 'products/new'
  get "products/index"

  get 'sessions/new'

  get "users/new"
  get  "/help", to: "static_pages#help"
  get "/signup", to: "users#new"
  post "/signup",  to: "users#create"
  root "static_pages#home"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
end
