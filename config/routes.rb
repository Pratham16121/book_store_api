Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/bookspurchased', to: 'users#show'
  post '/newuser', to: 'users#create'
  delete '/deleteuser', to: 'users#destroy'

  get '/allbooks', to: 'books#index'
  post '/newbook', to: 'books#create'
  delete '/deletebook', to: 'books#destroy'
  
  post '/newreview', to: 'reviews#create'

  post '/quantity', to: 'buyed_books#availaible_quantity'
  post '/buyedbook', to: 'buyed_books#create'
  
end