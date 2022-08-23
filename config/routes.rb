Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :clothes, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    # index show create new edit delete
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
