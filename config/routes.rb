Rails.application.routes.draw do
  ###Heroines###
  get '/heroines', to: 'heroines#index', as: 'heroines'
  get '/heroines/new', to: 'heroines#new', as: 'new_heroine'
  get '/heroines/:id', to: 'heroines#show', as: 'heroine'

  post '/heroines', to: 'heroines#create'

  ###Powers###
  get '/powers', to: 'powers#index', as: 'powers'
  get '/powers/:id', to: 'powers#show', as: 'power'
end
