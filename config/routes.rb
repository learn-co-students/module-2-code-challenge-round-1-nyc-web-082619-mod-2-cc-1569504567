Rails.application.routes.draw do
  resources :powers, only: [:index]
  get '/powers/:id/show', to: 'powers#show', as: 'power'
  resources :heroines, only: [:index]  
  get '/heroines/:id/show', to: 'heroines#show', as: 'heroine'
  get '/heroines/new', to: 'heroines#new', as: 'new_heroine'
  post '/heroines', to: 'heroines#create', as: 'heroine_page'
end
