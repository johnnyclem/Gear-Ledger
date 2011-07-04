Bookstore::Application.routes.draw do  
  
  match '/sign_out' =>  "clearance/sessions#destroy" 
  
  resources :items

  resources :packages
  
  root :to => 'clearance/sessions#new'
end
