Rails.application.routes.draw do
  get '/admin', to: 'admins#dash'
  get 'admins', to: 'admins#dash'
  get 'admins/dash'
  get 'admins/showClientes'
  get 'admins/showDogs'
  get 'admins/showPasseadores'
  #resources :dogs
  root 'application#hello'
  resources :passeadores
  resources :clientes do
    resources :dogs
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
