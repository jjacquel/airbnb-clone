Rails.application.routes.draw do
  root "flats#index"
  get "/flats/:id", to: "flats#show", as: :flat
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
