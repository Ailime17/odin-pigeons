Rails.application.routes.draw do
  resources :pigeons

  root "pigeons#index"
end
