Blog::Application.routes.draw do

  devise_scope :user do 
    get 'auth/:provider/callback', to: 'users/sessions#create_with_facebook'
  end

  get 'auth/failure', to: redirect('/')

  devise_for :users, :controllers => {
    :registrations => "users/registrations", :sessions => 'users/sessions'
  }
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :blogs
  resources :categories
  get 'home' => 'home#index'
  get 'about' => 'home#about'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

end
