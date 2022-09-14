Rails.application.routes.draw do
  
  root 'homes#top'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # delete '/users/:user_id/relationships', to: 'relationships#destroy'
  # get '/users/:user_id/relationships', to: 'relationships#create'
  
  resources :users
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :followings, on: :member
    get :followers, on: :member
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
