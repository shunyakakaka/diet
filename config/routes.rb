Rails.application.routes.draw do
  resources :diets, only: [:index, :new, :show, :create, :edit, :update]
end
