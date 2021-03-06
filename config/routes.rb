Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pictures#index'

  get 'pictures/onemonth' => 'pictures#onemonth'
  get 'pictures/search' => 'pictures#search'

  resources :sessions, only: %i(create new destroy)
  resources :users, only: %i(new create)

  resources :pictures

end
