Rails.application.routes.draw do
  
  devise_for :users
  
  resources :users

  resources :products do
    resources :comments
  end
  
  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/index'

  get 'simple_pages/landing_page'

  # root 'products#index'
  root 'simple_pages#landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'simple_pages/thank_you'

  get 'simple_pages/thank_you'

	resources :orders, only: [:index, :show, :create, :destroy]

end
