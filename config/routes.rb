Rails.application.routes.draw do
  resources :events, only: [:new, :create, :index, :destroy]
  resources :leads, only:  [:new, :create, :show, :index, :destroy]
  
  #get '/about', to:'home#about'
  #get '/contact', to:'leads#new'
  #root 'home#index'
  
  get '/', to:'home#index', as: 'home'
  #home_path
  get '/:id', to:'home#about', as: 'about'
  #about_path
  get 'leads/:id', to:'leads#new'  
  #lead_path
  get 'events/', to:'events#index'

  #get 'events/:id', to:'events#new'

  #root 'home#index'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
