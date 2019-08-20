Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # get '/home', to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # CRUD task

  # CREATE

  get "/tasks/new", to: "tasks#new"

  post '/tasks', to: 'tasks#create'

  # READ

  # see all tasks

  get "/tasks", to: "tasks#index"

  # see one task

  get "/tasks/:id", to: 'tasks#show', as: "task"

  # UPDATE

  # form for editing a task

  get "/tasks/:id/edit", to: 'tasks#edit', as: "edit_task"

  # update a task

  patch "/tasks/:id", to: 'tasks#update'

  # DELETE

  delete 'tasks/:id', to: 'tasks#destroy'

  # resources :tasks
end

