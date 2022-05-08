Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "homes#index"

  get "/industries", to: "industries#index", as: "industries"
  get "/industries/new", to: "industries#new", as: "new_industry"
  post "/industries/new/", to: "industries#create", as: "create_industry"
  get "/industries/edit/:id", to: "industries#edit", as: "edit_industry"
  post "/industries/edit/:id", to: "industries#update", as: "update_industry"
  get "/industries/delete/:id", to: "industries#delete", as: "delete_industry"

  get "/sectors", to: "sectors#index", as: "sectors"

  get "/physicians", to: "physicians#index", as: "physicians"

  get "/patients", to: "patients#index", as: "patients"

  get "/appointments", to: "appointments#index", as: "appointments"
end
