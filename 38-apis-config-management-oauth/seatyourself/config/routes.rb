Sy::Application.routes.draw do
  root to: 'home#home'

  resources :restaurants do
    resources :reservations, only: :create
  end

  resources :users, only: [:show, :new, :create]
  resources :sessions, only: [:create, :destroy, :new]

  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback" # for use with Github, Facebook
  get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider
end
