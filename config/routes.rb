Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  
  post "/ingredient" => "ingredient#create"
  patch "/ingredient/:id" => "ingredient#update"
  delete "/ingredients/:id" => "ingredients#destroy"

  get "/ingredients/:id" => "ingredient#show"
  get "/ingredients" => "ingredients#index"

  get "/my_pantry_items" => "my_pantry_items#index"
  post "/my_pantry_items" => "my_pantry_items#create"
 
  # get "/my_pantry_items", controller: "my_pantry_items", action: "index"
end
