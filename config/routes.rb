Rails.application.routes.draw do

  authenticated :user do
    root to: 'static_pages#dashboard', as: :authenticated_root
  end
  
  devise_for :users, controllers: { registrations: 'registrations' }, :path_prefix => "r"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "static_pages#dashboard"
  
  post '/user/update/:id' => 'users#update', :as => :update_user
  post '/users/new' => 'users#create', :as => :create_user
  
  resources :users, except: :create
end
