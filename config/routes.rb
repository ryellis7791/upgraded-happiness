Rails.application.routes.draw do
  get 'users/show'

  resources :posts do
  	resources :comments
  end
  devise_for :users
  root 'posts#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
