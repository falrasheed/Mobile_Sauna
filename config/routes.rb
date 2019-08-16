Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :saunas do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :delete]
  get '/dashboard', to: 'saunas#dashboard', as: 'dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
