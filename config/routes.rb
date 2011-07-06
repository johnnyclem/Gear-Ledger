Bookstore::Application.routes.draw do  
  
  resources :invites

  match '/sign_out' =>  "clearance/sessions#destroy" 
      
  resources :items

  resources :packages
  
  root :to => 'items#index'
end
