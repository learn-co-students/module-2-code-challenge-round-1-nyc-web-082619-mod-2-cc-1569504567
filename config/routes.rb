Rails.application.routes.draw do
  get "powers/", to: "powers#index", as: "powers"
  get "powers/:id", to: "powers#show#", as: "power"
  get "heroines/", to: "heroines#index", as: "heroines"
  get "heroines/new", to: "heroines#new", as: "new_heroine"
  get "heroines/:id", to: "heroines#show", as: "heroine"
  post "heroines/new", to: "heroines#create"
  delete "heroines/:id", to: "heroines#delete"
end
