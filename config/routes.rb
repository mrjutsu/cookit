Rails.application.routes.draw do
  
  resources :landpages

  #****************************************

  devise_for :users
  # resources :new_user_session, :path => "/login/"
  # resources :new_user_registration, :path => "signup/"

  #****************************************
  #Changed URL paths for display

  resources :recipees, :path => "recipes/"
  resources :new_recipee, :path => "recipes/new"
  resources :edit_recipee, :path => "recipes/edit"

  #***************************************

  #get 'users/edit' => 'devise/registrations#edit'
  match '/users/sign_out' => 'devise/sessions#destroy', :via => :delete

  resources :users
  #match 'users/:id/edit' => 'users#edit', :via => :get
  #get 'users/edit'
  #This for destroying users
  #match 'users/:id' => 'users#destroy', :via => :delete #, :as => :admin_destroy_user
  #match 'users/:id' => 'users#show', :via => :get, as: :user

  #get 'sessions/new'

  #post 'sessions' => 'sessions#create'
  #get 'sessions/destroy'
  #get 'logout' => 'sessions#destroy'

  #*******************************
  #This to be analyzed later
  # resources :users, :except => [:create, :show, :edit, :update, :destroy], :as :user
  # resources :users, :path => '/', :only => [:show, :update, :destroy]
  #*******************************

  devise_scope :user do
    root to: "landpages#index"
  end

   #root :to => "devise/sessions#new"

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
