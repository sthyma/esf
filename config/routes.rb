Rails.application.routes.draw do
  root to: "pages#home"

  resources :estimations, only: [:create]
  get '/en', to: 'pages#eng', as: 'english'
end
