Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new]  

  # get '/heroines/new', to: 'heroines#new', as: 'new_heroine'

  post '/heroines/new', to: 'heroines#create', as: 'create_heroine'
end
