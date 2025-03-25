Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index"
  get "stock", to: "stocks#index"
end
