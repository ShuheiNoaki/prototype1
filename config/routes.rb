Rails.application.routes.draw do
  resources :memos
  resources :notes
  resources :fields
  resources :farms
  resources :users
end
