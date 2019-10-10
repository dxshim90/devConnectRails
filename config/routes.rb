Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :profiles
  resources :posts do 
    resources :comments 
  end

  root 'pages#index'
end
