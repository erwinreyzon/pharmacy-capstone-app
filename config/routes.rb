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

end
