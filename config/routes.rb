Rails.application.routes.draw do
  devise_for :views
  root 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users

  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
end
