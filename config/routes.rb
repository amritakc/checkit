Rails.application.routes.draw do
  
  root 'users#index'
  post '/sessions' => 'users#create'
  get '/homepage/:id' => 'resources#show'

end
