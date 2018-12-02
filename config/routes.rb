Rails.application.routes.draw do
  resources :users
  authenticated :user do
    root to: 'users#index', as: :authenticated_root
  end
  devise_for :users, controllers: { registrations: 'registrations' }, :path_prefix => "r"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"
end
