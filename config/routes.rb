Rails.application.routes.draw do
  # root 'pages#home'
  get '/' => 'pages#home'
  get '/' =>'pages#index'
  devise_for :users

  # Admin
  get '/admin' => 'admin#index'
  get '/admin/change/:tab' => 'admin#change'
  post'/admin/to-teacher' => 'admin#dmddo'

  # Teachers
  get '/teachers' =>'teacher#index'
  post '/teacher-create' =>'teacher#create'
  get '/teacher-new' =>'teacher#new'
  get '/teacher/edit/:id' =>'teacher#edit'
  post '/teacher/update/:id' =>'teacher#update'
  get '/teacher/delete/:id' =>'teacher#delete'

  # Likes
  get '/like/:teacher_id' =>'teacher#like_create'
  get '/unlike/:id' =>'teacher#like_delete'
  
  # Posts
  post '/post-create' =>'post#create'
  get '/post-new' =>'post#new'
  
  # Comments
  post '/comment/create/:post_id' =>'post#comment_create'


  # Reviews
  get '/reviews/:teacher_id' => 'review#index'
  get '/reviews/new/:teacher_id' => 'review#new'
  post '/review/create/:teacher_id' => 'review#review_create'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
