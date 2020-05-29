Rails.application.routes.draw do
  root 'home#index'

  post '/', to: 'volunteers#create' # POST /#apply for the volunteer form on the root

  resources :cities, only: :index
  resources :states, only: :index

  resources :partners, only: [:index, :create]

  namespace :api do
    post '/hospital', to: 'hospitals#create'
  end

  get '/hospitals', to: 'hospitals#index'

  get '/about', to: 'pages#about'
  get '/terms', to: 'pages#terms'
  get '/privacy', to: 'pages#privacy'

  get'/country-code', to: "countries#show"
end
