Rails.application.routes.draw do
  get "/songs" => "songs#index"
  get "/songs/:id" => "songs#show"
  patch "/songs/:id" => "songs#update"
  delete "songs/:id" => "songs#destroy"
  post "/songs" => "songs#create"
end
