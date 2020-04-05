Rails.application.routes.draw do
  get 'login/login'
  root 'principal#home'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
