Rails.application.routes.draw do
  root 'topics#index'
  
  resources :topics, :only => [:show,:index]
  #get 'topics' => 'topics#index'
end
