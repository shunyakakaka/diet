Rails.application.routes.draw do
  resources :logins
  get "mypage", to: "logins#me"
  root "home#index"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get 'sessions/destroy'
  resources :diets
end
