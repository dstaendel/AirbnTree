Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :treehouses, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :destroy]
  end
end
