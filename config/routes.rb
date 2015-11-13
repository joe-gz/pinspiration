Rails.application.routes.draw do
  devise_for :users
  root to: "pins#index"

  resources :pins do
    resources :tags
  end
  resources :users do
    resources :boards do
      resources :tags
    end
  end

end
