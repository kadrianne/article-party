Rails.application.routes.draw do
  resources :articles, except: [:new, :edit]
  resources :magazines, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/authors", to: "authors#index"
  resources :authors, only: [:index,:show,:create,:update,:destroy]
end
