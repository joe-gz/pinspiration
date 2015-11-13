Rails.application.routes.draw do
  devise_for :users
  root to: "pins#index"

  resources :pins
  resources :users do
    resources :boards
  end

end
