Rails.application.routes.draw do
  root 'home#index'
  resources :pictures, only: %i[index show]
end
