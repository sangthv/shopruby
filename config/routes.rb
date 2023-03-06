Rails.application.routes.draw do

  resources :students
  # root to: 'students#index'

  get 'login' ,to: "session#new"
  post    'login', to: "session#create"
  delete  'logout', to: "session#destroy"
  resources :users

end
