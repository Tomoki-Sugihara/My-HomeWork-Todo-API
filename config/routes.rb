Rails.application.routes.draw do
  get '/api/todo_lists/' => "todo_lists#index"
  post '/api/todo_lists/' => 'todo_lists#create'
  delete '/api/todo_lists/' => 'todo_lists#delete'
  # get 'api/todo_lists/test/:id' => 'todo_lists#test'
  patch '/api/todo_lists/is_important/' => 'todo_lists#update_is_imoportant'
  patch '/api/todo_lists/is_done/' => 'todo_lists#update_is_done'
  post '/api/todo_lists/perge' => 'todo_lists#perge'

  get '/api/subject_lists/' => 'subject_lists#index'
  post '/api/subject_lists/' => 'subject_lists#create'
  post '/api/subject_lists/perge' => 'subject_lists#perge'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
