Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create, :index]
  end
  # resources :reviews, only: [:destroy, :update, :edit, :show]

end
