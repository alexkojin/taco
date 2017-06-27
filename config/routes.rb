Rails.application.routes.draw do
  resources :tacos, only: [:index, :create, :destroy]
end
