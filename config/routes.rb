Rails.application.routes.draw do
 get "/moist", to: "moisturizers#index"
 get "/moist/new", to: "moisturizers#new"
 post "/moist", to: "moisturizers#create"
 get "/moist/:id", to: "moisturizers#show"
 get "/moist/:id/edit", to: "moisturizers#edit"
  patch "/moist/:id", to: "moisturizers#update"
  delete "/moist/:id", to: "moisturizers#destroy"
end
