Rails.application.routes.draw do
  resources :categories, expect: :show  
  resources :products, path: '/'
end
