Bookstore::Application.routes.draw do  
  
  match '/sign_out' =>  "clearance/sessions#destroy" 
                    
  resources :users, :except => [:new]
    
  resources :items

  resources :packages
  
  root :to => 'items#index'
end
