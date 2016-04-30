Rails.application.routes.draw do
  
  root 'users#index'
  post '/sessions' => 'users#create'

end
