Rails.application.routes.draw do
  devise_for :users
  root 'topics#index'

  resources :topics, :only => [:show,:index] do
    resources :likes, :only => [:create,:destroy]
  end


  get 'users/:id' => 'users#show'
  get 'users' =>  'users#index'


end
