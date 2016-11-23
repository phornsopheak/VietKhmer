Rails.application.routes.draw do
  root "static_pages#home"

  get "/about_us", to: "static_pages#about_us"

  resources :words
  resources :articles
end
