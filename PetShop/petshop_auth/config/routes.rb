Rails.application.routes.draw do
  devise_for :users
  resources :animals

  get "animals", to:"animals#index"
  post "animals/new", to: "animals#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "animals#index"
end
