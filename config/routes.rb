Rails.application.routes.draw do

  get "/drugs" => "drugs#index"
  get "/drugs/:id" => "drugs#show"
  post "/drugs" => "drugs#create"
  patch "drugs/:id" => "drugs#update"
  delete "drugs/:id" => "drugs#destroy"

end
