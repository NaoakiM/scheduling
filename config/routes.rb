Rails.application.routes.draw do
  get 'schedulings/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'schedulings#index'
  resources :schedulings
end
