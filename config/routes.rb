Rails.application.routes.draw do

  devise_for :users
  resources :scenes do
    resources :choices
  end

  root to: "pages#home"

  resources :pcs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
