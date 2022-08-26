Rails.application.routes.draw do
  get 'renter_menu/index'
  get 'dresser_menu/index'
  devise_for :users
  root to: "pages#home"

  resources :clothes, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index] do
    member do
      patch :accept
      patch :decline
    end
  end
  resource :dresser_menu, only: [:show]
  resource :renter_menu, only: [:index]
end


