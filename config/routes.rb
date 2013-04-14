Recipe::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)

  # get "home/index"

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/shop'


  devise_scope :user do
    get '/login', :to => "devise/sessions#new"
    get '/sign_up', :to => "devise/registrations#new"
    delete '/sign_out', :to => "devise/sessions#destroy"
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

  namespace :admin do

  end


  authenticated :user do
    root :to => 'home#index'
  end

  #root :to => "Manuals#index"
  root :to => "marketing#index"

  devise_for :users
  ActiveAdmin.routes(self)
  resources :users
end
