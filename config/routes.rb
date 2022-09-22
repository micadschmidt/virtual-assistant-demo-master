Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :companies
  resources :offers do
    resources :applications, only: :new
  end
  resources :applications, except: :new
  resources :comments
  resources :reviews, only: %i[new create]
  resources :assistants, only: [:index, :update]
  resources :assistants do
    resources :chatrooms, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: [:destroy]
  resources :chatrooms do
    resources :mensajes, only: %i[new create]
  end
end
