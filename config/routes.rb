Rails.application.routes.draw do
  namespace :admins_backoffice do
    get 'sales/index'
  end
  devise_for :admins
 
  root to: 'admins_backoffice/welcome#index'
  
  namespace :admins_backoffice do
   get 'welcome/index'
   resources :clients
   resources :products
   resources :sales
  end
end
