Rails.application.routes.draw do

  resources :posts

  root "posts#index"

  get "/about" => "pages#about"



end
