Bookstore::Application.routes.draw do  
  
  match '/sign_out' =>  "clearance/sessions#destroy" 
  
  resource :session, :controller => 'sessions'
  
  resources :items

  resources :packages
  
  root :to => 'clearance/sessions#new'
end
