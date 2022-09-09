Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/newuser', to: 'users#create'
  post '/newbook', to: 'books#create'
  post '/buyedbook', to: 'buyed_books#create'
  post '/newreview', to: 'reviews#create'
end