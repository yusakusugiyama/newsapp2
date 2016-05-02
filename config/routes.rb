Rails.application.routes.draw do
  root 'topics#index'
  
  resources :topics
  #get 'topics' => 'topics#index'
end
