Rails.application.routes.draw do
  devise_for :models
  root to: "home#index"
  
  resources :articles  

  root controller: :articles, action: :index

end
