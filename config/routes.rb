Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "tasks", to: "tasks#index" #chage task to tasks by generating taskscontroller not task
  # get "tasks/:id", to: "tasks#show", as: 'task'
  # get "tasks/new", to: "tasks#new"
  get '/tasks', to: 'tasks#index'
  # # II. CREATE - 1. get, 2. post
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create', as: 'task_create'
  # I.2 READ specific
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  # # III. UPDATE
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'task_edit'
  patch '/tasks/:id', to: 'tasks#update', as: 'task_update'
  # # IV. DELETE
  delete '/tasks/:id', to: 'tasks#destroy', as: 'task_destroy'

  
end
