Rails.application.routes.draw do
  
  root to: "tops#index"
  resources :posts, only: [:index, :new, :create]
end
