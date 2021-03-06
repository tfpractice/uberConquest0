Rails.application.routes.draw do


  namespace :conquest do
  get 'categories/show'
  end

  namespace :conquest do
  get 'categories/index'
  end

    resources :categories, only: [:index, :show], controller: 'conquest'
    resources :segments, only: [:index, :show], controller: 'conquest'
    resources :inquiries, only: [:new, :create], controller: 'conquest'

 namespace :conquest do
    resources :categories, only: [:index, :show]
  end
    
  get 'conquest/categories/show'
  
  get 'conquest/index'

  get 'conquest/show'

  get 'conquest/signup'

  get 'conquest/success'

  namespace :admin do
    resources :inquiries
  end

  namespace :admin do
    resources :segments
  end

  namespace :admin do
    resources :categories
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'sample/index'
#  get 'conquest/signUp'

  root 'conquest#index'
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

  get ':controller/:action/:id'
end
