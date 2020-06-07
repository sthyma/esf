Rails.application.routes.draw do
  root to: "pages#home"

  resources :estimations, only: [:new, :create]
end
