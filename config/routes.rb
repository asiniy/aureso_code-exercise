Rails.application.routes.draw do
  post 'model_type_prices/:id', to: 'model_type_prices#create'

  devise_for :users
  ActiveAdmin.routes(self)
  root to: 'pages#root'
end
