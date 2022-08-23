Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  
  resources :clothes, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index] do
    member do
      patch :accept
      patch :decline
    end
  end
  resource :dresser_menu, only: [:show]
end
