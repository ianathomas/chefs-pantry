Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/ingredient" => "ingredient#create"

  get "/ingredient/:id" => "ingredient#show"
  get "/ingredients" => "ingredients#index"

  get "/mypantry" => "mypantry#index"
 

end
