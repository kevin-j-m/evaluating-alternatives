Rails.application.routes.draw do
  resources :study, only: [] do
    resources :study_participants, only: [:new, :create, :index]
  end
end
