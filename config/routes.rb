Rails.application.routes.draw do
  get '/welcome', to: 'welcome#index'
  get 'welcome/index'
  get 'welcome/searchCliente'
  get '/admin', to: 'admins#dash'
  get '/admin/showClientes', to: 'admins#showClientes'
  get '/admin/showDogs', to: 'admins#showDogs'
  get '/admin/showPasseadores', to: 'admins#showPasseadores'
  get 'admins', to: 'admins#dash'
  get 'admins/dash'
  get 'admins/showClientes'
  get 'admins/showDogs'
  get 'admins/showPasseadores'
  #resources :dogs
  root 'welcome#index'
  resources :passeadores
  resources :clientes do
    resources :dogs
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
