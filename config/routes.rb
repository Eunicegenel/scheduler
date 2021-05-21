Rails.application.routes.draw do
  get '/users/sched' => 'users#sched', as: 'user_sched'
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users/new' => 'users#create', as: 'create_user'
end
