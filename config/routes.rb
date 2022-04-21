Rails.application.routes.draw do

  get "/drugs" => "drugs#index"
  get "/drugs/:id" => "drugs#show"

end
