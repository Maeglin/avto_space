AvtoSpace::Application.routes.draw do
  resources :services

  get "services/new"

  get "services/edit"

  get "services/article"

  get "services/index"

  get "development/index"

  resources :contacts
  
  resources :autos

  get "contacts/index"
  
  get "price/add"

  get "main/index"
  resources :contacts, :only => [:new, :create]
  root :to => "main#index"
  match "contacts/" => "contacts#index"
  match "contacts/" => "contacts#index"
  match "services/create" => "services#create"
  match "nopage/" => "development#index"
  match "services/" => "services#index"
  match "price/add" => "price#add"
  match "price/" => "price#index"
  match "price/calc" => "price#calc"
  match "price/create_type" => "price#create_type"
  match "price/create_auto" => "price#create_auto"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
