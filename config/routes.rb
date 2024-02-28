Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"
  resources :treehouses do
    resources :bookings, except: [:index, :show]
  end
end
