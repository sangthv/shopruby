Rails.application.routes.draw do
  # get 'students', to: "students#new"
  post 'students', to: "students#create"
  delete 'students', to: "students#destroy"
  resources :students
  root to: 'students#index'

  get 'login' ,to: "session#new"
  post    'login', to: "session#create"
  delete  'logout', to: "session#destroy"
  resources :users

end
