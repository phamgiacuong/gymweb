Rails.application.routes.draw do
  get 'products/new'
  get "products/index"
  get  'static_pages/home'
  get  'static_pages/help'
  get 'sessions/new'

  get "users/new"
  get  "/help", to: "static_pages#help"
  get "/signup", to: "users#new"
  post "/signup",  to: "users#create"
  root "static_pages#home"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

   resources :users
   resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
