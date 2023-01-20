Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "main#index"
  
  get 'reports/index'
  get 'reports/report'
  get 'main/index'
  resources :operations
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
