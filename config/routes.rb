Rails.application.routes.draw do
  resources :movies
  scope :api do
    resources :categories
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
