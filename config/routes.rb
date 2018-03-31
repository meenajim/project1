Rails.application.routes.draw do


  get 'session/new'


  get 'users/new'

  root :to =>'pages#home'
  # root :to => 'instructors#index'

  resources :users, :only => [:new, :create]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :instructors
  resources :students
  resources :performances

end
