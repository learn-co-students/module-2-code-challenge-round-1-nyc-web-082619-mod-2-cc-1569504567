Rails.application.routes.draw do
  resources :powers, only: [:index]
  resources :heroines, only: [:index]  
  get 'heroines/new', to: 'heroines#new', as: 'new_heroine'
  get 'heroines/:id', to: 'heroines#show', as: 'heroine'
  post 'heroines', to: 'heroines#create'
  
  
  get 'powers/:id', to: 'powers#show', as: 'power'
end
