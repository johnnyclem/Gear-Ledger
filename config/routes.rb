Bookstore::Application.routes.draw do  
  
  match '/sign_out' =>  "clearance/sessions#destroy" 
          
  match '/sign_up' => 'items#index'
  
  resources :items

  resources :packages
  
  root :to => 'items#index'
end
