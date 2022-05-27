Rails.application.routes.draw do
  # root 'pages#home'
  get '/' => 'pages#home'
  get '/' =>'pages#index'
  devise_for :users

  get '/admin' => 'admin#index'

  get '/teachers' =>'teacher#index'
  post '/teacher-create' =>'teacher#create'
  get '/teacher-new' =>'teacher#new'
  get '/teacher/edit/:id' =>'teacher#edit'
  post '/teacher/update/:id' =>'teacher#update'
  get '/teacher/delete/:id' =>'teacher#delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
