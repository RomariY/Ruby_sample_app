Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'friends#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'static_pages#home', as: :unauthenticated_root
    end
  end
  resources :friends
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/news'
  #get 'home/index'
  root 'friends#index'
  #root 'static_pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
