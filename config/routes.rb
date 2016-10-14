Rails.application.routes.draw do
  get 'users/new'

  resources :users 

  resources :posts do
	resources :comments
  end	


  post 'users/login_create'

  get 'users/logout'

  get 'users/profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#login'
end
