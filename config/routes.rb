Recipe::Application.routes.draw do
  resources :categories


  resources :manuals


  authenticated :user do
    root :to => 'Manuals#index'
  end
  root :to => "Manuals#index"
  devise_for :users
  resources :users
end