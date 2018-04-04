Rails.application.routes.draw do
  root :to =>'pages#home'
  # root :to => 'instructors#index'

  resources :users, :only => [:new, :create]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :instructors do
    post 'like' => 'likes#create'
    delete 'like' => 'likes#destroy'
  end
  #post '/instructors/:instructor_id/like' => 'likes#create'
  resources :students
  resources :performances

end
