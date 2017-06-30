Rails.application.routes.draw do
  resources :companies_hrs
  devise_for :users
  root :to => "home#dashboard"
  root :to => "home#dashboard"
  resources :students

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
