Rails.application.routes.draw do
  get "/", to: "authors#home"
  get "/authors", to: "authors#index", as: "authors"
  get "/authors/new", to: "authors#new", as: "new_author"
  post "/authors/new", to: "authors#create"
  get "/authors/:id", to: "authors#show", as: "author"
  delete "/authors/:id", to: "authors#destroy"
  get "/authors/:id/edit", to: "authors#edit", as: "edit_author"
  patch "/authors/:id/edit", to: "authors#update"
  put "/authors/:id/edit", to: "authors#update"
end
