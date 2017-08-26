Rails.application.routes.draw do
  resources :users
  resources :todos
  resources :requests
  resources :services
  resources :ducks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
