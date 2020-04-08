Rails.application.routes.draw do
  get 'product/products'
  get 'static/Nosotros'
  get 'static/Caracteristicas'
  get 'static/Productos'
  get 'static/Contacto'
  get 'login/login'

  # root 'principal#home'
  root 'home#index'

  get 'home/index'

  get 'principal/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
