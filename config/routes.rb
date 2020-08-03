Rails.application.routes.draw do
  get 'api/todo_lists/' => "todo_lists#index"
  post 'api/todo_lists/' => 'todo_lists#create'
  get 'todo_lists/delete'
  get 'todo_lists/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
