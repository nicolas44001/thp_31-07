Rails.application.routes.draw do
  root to: "static_pages#home", as: "home"
  get '/new', to: "users#new", as: "new"
  post '/new', to: "users#create"
  get '/users/:username', to: "users#show"
  get '/error', to: "static_pages#error"
end
