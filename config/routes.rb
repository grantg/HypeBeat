Rails.application.routes.draw do

  authenticated :user do
    root to: 'users#index', as: :authenticated_root
  end
  
  devise_for :users, controllers: { registrations: 'registrations' }, :path_prefix => "r"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "users#index"
  
  post '/user/update/:id' => 'users#update', :as => :update_user
  post '/users/new' => 'users#create', :as => :create_user
  post '/comments/new' => 'comments#create', :as => :create_comment
  
  resources :users, except: :create
  resources :comments, except: :create
end
