Rails.application.routes.draw do
  devise_for :users
  root to: "study_participants#index"

  resources :personal_information, only: [:edit]

  resources :studies, only: [:show] do
    resources :study_participants, only: [:new, :create, :index]
    resources :study_protocols, only: [:new, :create]
  end
end
