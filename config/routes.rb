Rails.application.routes.draw do

  root :to => "visitors#index"
  
  resources :subtopics do
    resources :examples
    resources :proofs    
  end

  resources :courses do
    resources :topics
  end

  devise_for :users
  resources :users
end
