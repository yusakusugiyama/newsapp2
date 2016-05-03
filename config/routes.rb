Rails.application.routes.draw do
  root 'topics#index'

  resources :topics, :only => [:show,:index] do
    resources :likes, only: [:index, :create, :destroy]
  end

end
