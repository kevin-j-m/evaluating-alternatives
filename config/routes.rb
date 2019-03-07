Rails.application.routes.draw do
  devise_for :users
  root to: "study_participants#index"

  resources :personal_information, only: [:edit]

  resources :study, only: [] do
    resources :study_participants, only: [:new, :create, :index]
  end
end
