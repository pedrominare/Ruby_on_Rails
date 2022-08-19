Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Especificando quem atende as requisições
  
  # delete "produtos/:id", to: "produtos#destroy", as: :produto # sempre que criar uma rota precisa de um controller.
  # post "produtos", to: "produtos#create" # rota para criar produto
  # get "produtos/new", to: "produtos#new"

  # rails gerando recursos da página: Delete, Post, Get, etc..
  get "produtos/busca", to: "produtos#busca", as: :busca_produto
  resources :produtos, only: [:new, :create, :destroy]

  root to: "produtos#index" # sempre que criar uma rota precisa de um controller.
end
