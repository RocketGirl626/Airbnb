Rails.application.routes.draw do
  devise_for :users
  get '/' => 'home#index'

  # resources :users do
  #   resources :properties
  # end

  resources :properties do
    resources :reviews
  end


end
