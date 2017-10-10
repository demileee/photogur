Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pictures#index'
  get 'pictures' => 'pictures#index'
  get 'pictures/new' => 'pictures#new'
  post 'pictures' => 'pictures#create'
  get 'pictures/:id' => 'pictures#show'
end
