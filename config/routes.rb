Rails.application.routes.draw do

  resources :post1s
  devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks' }

  root "first#woori"
  
   get "/first/join"=>"first#join"
  get "/first/join_process"=>"first#join_process"
  
  get "/first/login"=>"first#login"
  get "/first/login_process"=>"first#login_process"
 
  get "/first/logout"=>"first#logout"
 
  get "/homes/index"=>"homes#index"
  get "/first/woori1"=>"first#woori1"
  get "/first/woori11"=>"first#woori11"
  
  get "/first/update/:id"=>"first#update"
  get "/first/edit/:id"=>"first#edit"
  
  get "/first/destroy/:id"=>"first#destroy"
  get "/first/destro/:id"=>"first#destro"
  get "/first/destr/:id"=>"first#destr"
  get "/first/dest/:id"=>"first#dest"
  
  get "/first/help"=>"first#help"
  get "/first/help_process"=>"first#help_process"
  
  get "/first/meaning"=>"first#meaning"
  get "/first/posupdate"=>"first#posupdate"
  
  get "/first/index"=>"first#index"
  
  get "/first/admit"=>"first#admit"
  get "/first/admi/:id"=>"first#admi"
  
  get "/first/market"=>"first#market"
  get "/first/market_at"=>"first#market_at"
  
  get "/post1s"=>'post1s'
  get "/post1s/neww"=>"post1s#neww"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
