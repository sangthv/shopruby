Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  put 'books/update'
  # get 'session/new'
  get 'login' ,to: "session#new"
  post    'login', to: "session#create"
  delete  'logout', to: "session#destroy"
  resources :users
  # resources : users
  # get 'users/list', to: "users#list"

end
