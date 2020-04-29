Rails.application.routes.draw do
  resources :users
  resources :products

  get 'principal/products', to: 'products#index'
  get 'envio/envios'
  get 'pedidos/pedidos'
  get 'product/products'
  get 'static/Nosotros'
  get 'static/Caracteristicas'
  get 'static/Productos'
  get 'static/Contacto'
  get 'login'	=> "login#new"
  post 'login' => "login#create"
  get 'signup' => "users#new"

  get 'principal' => "principal#home"
  # root 'principal#home'
  root 'home#index'

  get 'home/index'

  get 'principal/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
