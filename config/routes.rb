Bookstore::Application.routes.draw do
  resources :items

  resources :packages

  root :to => 'items#index'
end
