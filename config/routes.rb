Rails.application.routes.draw do



  get 'performances/index'

  get 'performances/new'

  get 'performances/edit'

  get 'performances/show'

  get 'students/index'

  get 'students/new'

  get 'students/edit'

  get 'students/show'

  get 'session/new'


  get 'users/new'

  root :to =>'pages#home'

  resources :users, :only => [:new, :create]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :instructors
  resources :students
  resources :performances

end
