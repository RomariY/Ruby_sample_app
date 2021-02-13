Rails.application.routes.draw do
  resources :friends
  #get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/news'
  #get 'home/index'
  root 'static_pages#home'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
