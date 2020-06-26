Rails.application.routes.draw do
  get '/products/index', to: 'products#index'
  post '/products/add', to: 'products#add'
  root 'products#index'
end
