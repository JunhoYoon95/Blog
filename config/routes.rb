Rails.application.routes.draw do
  # root 'pages#home'
  get '/' => 'pages#home'
  devise_for :users

  get '/' =>'pages#index'
  get '/teachers' =>'teacher#index'
  post '/teacher-create' =>'teacher#create'
  get '/teacher-new' =>'teacher#new'
  get '/teacher/edit/:id' =>'teacher#edit'
  post '/teacher/update/:id' =>'teacher#update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
