Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"

  resources :treehouses do
    resources :bookings, except: [:index, :show]
  end

  patch "booking/:id/accept", to: "bookings#accept", as: :booking_accept
  patch "booking/:id/reject", to: "bookings#reject", as: :booking_reject
end
