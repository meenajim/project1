Rails.application.routes.draw do
  root :to =>'pages#home'


  resources :users, :only => [:new, :create]
  
    get '/login' => 'session#new'
    post '/login' => 'session#create'
    delete '/login' => 'session#destroy'

  resources :instructors do
    post 'like' => 'likes#create'
    delete 'like' => 'likes#destroy'
  end
  resources :students
  resources :performances

end
