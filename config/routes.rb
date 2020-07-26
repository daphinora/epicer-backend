Rails.application.routes.draw do
  resources :steps
  resources :user_recipes
  resources :recipe_ingredients
  resources :ingredients
  resources :menu_recipes
  resources :user_menus
  resources :menus
  resources :users
  resources :recipes

  resource :users, only: [:create]
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  get "/user_is_authed", to: "auth#user_is_authed"
end
