Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }

  resources :responsavels
  resources :consulta
  resources :animals
  resources :veterinarios
end
