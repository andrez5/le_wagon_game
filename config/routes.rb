Rails.application.routes.draw do
  devise_for :users
  resources :scenes, path: 'game', only: [:show, :new, :create] do
    resources :choices
  end

  root to: "pages#home"

  resources :pcs, only: [:new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
