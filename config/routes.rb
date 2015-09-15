Rails.application.routes.draw do
  post 'model_type_prices/:id', to: 'model_type_prices#create'

  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#root'
end
