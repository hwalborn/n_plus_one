Rails.application.routes.draw do
  resources :dogs
  resources :users, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/n_plus_one', to: 'users#example'
end
