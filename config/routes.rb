Rails.application.routes.draw do
  resources :password_resets
  resources :tags
  resources :users
  
  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end

  root 'posts#index'
  get 'sessions/new'
  get 'users/new'

  get '/search_post' => 'posts#search_post', :as => 'search_post'
  get '/search_tag' => 'posts#search_tag', :as => 'search_tag_page'
  get '/users/:id/posts', to: 'users#show_posts', as: 'show_posts'
  get '/users/:id/comments', to: 'users#show_comments', as: 'show_comments'
  get '/users/:id/mentions', to: 'users#show_mentions', as: 'show_mentions'
  get '/users/:id/settings', to: 'users#user_settings', as: 'user_settings'
  patch '/users/:id/settings/profile', to: 'users#update_user_profile', as: 'update_user_profile'
  patch '/users/:id/settings/avatar', to: 'users#update_user_avatar', as: 'update_user_avatar'
  patch '/users/:id/settings/password', to: 'users#update_user_password', as: 'update_user_password'
  patch '/users/:id/settings/verification', to: 'users#update_user_verification', as: 'update_user_verification'

  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
end