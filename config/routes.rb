Rails.application.routes.draw do
  resources :users
  resources :my_cars
  root 'my_pages#home'

end
