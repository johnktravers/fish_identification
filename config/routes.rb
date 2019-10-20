Rails.application.routes.draw do

  get '/',             to: 'families#index'
  get '/families',     to: 'families#index'
  get '/families/:id', to: 'families#show'

end
