Rails.application.routes.draw do

  # Drug actions
  get "/drugs" => "drugs#index"
  get "/drugs/:id" => "drugs#show"
  post "/drugs" => "drugs#create"
  patch "drugs/:id" => "drugs#update"
  delete "drugs/:id" => "drugs#destroy"

  # Classification actions
  get "/classifications" => "classifications#index"
  get "/classifications/:id" => "classifications#show"
  post "/classifications" => "classifications#create"
  patch "/classifications/:id" => "classifications#update"

  ### User CREATE
  post "/users" => "users#create"

end
