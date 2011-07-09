Bookstore::Application.routes.draw do  
  
  match '/sign_out' =>  "clearance/sessions#destroy" 
          
  redirect('/sign_up', '/')
  
  resources :items

  resources :packages
  
  root :to => 'items#index'
end
