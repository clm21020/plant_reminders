Rails.application.routes.draw do
  root "anon#home"
  resource :session
  resources :users
end
