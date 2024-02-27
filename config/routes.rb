Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :treehouses do
    resources :bookings, except: [:index, :show]
  end
end
