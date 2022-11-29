Rails.application.routes.draw do
  get 'choices/new'
  get 'choices/create'
  get 'choices/index'
  get 'choices/show'
  get 'choices/destroy'
  get 'choices/edit'
  get 'choices/update'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :choices
  # Defines the root path route ("/")
  # root "articles#index"
end
