Recipe::Application.routes.draw do

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/shop'
  
  devise_scope :user do
    get '/login', :to => "devise/sessions#new"
    get '/signup', :to => "devise/registrations#new"
    delete '/logout', :to => "devise/sessions#destroy"
  end
  
  resources :categories

  namespace :shop do
    resources :products
  end
  
  resources :manuals do
    collection do
      get :search
    end
  end
  


  authenticated :user do
    root :to => 'Manuals#index'
  end
  root :to => "Manuals#index"
  devise_for :users
  resources :users
end