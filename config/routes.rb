Rails.application.routes.draw do
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  
  root :to => "products#index"
  post 'add_to_cart', to: 'carts#add_to_cart', as: 'add_to_cart'
  get 'cart', to: 'carts#show', as: 'cart'
  get '/reset_session', to: 'sessions#reset'
  post 'cart/procesar-pago', to: 'carts#index', as: 'index'
  post 'pedido', to: 'pedidos#salvar_pedido', as: 'salvar_pedido'
  # post '/salvar_pedido', to: 'pedidos#salvar_pedido', as: 'salvar_pedido'
  # resources :payments, only: [:create]



  devise_for :users

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
