Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "static_pages#home"

  get "/about_us", to: "static_pages#about_us"
  get "/note", to: "static_pages#note"
  get "/note_click", to: "static_pages#note_click"
  get "/line_to_line", to: "static_pages#line_to_line"
  get "/ph_to_ph", to: "static_pages#ph_to_ph"

  resources :words
  resources :articles
end
