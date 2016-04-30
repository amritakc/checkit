Rails.application.routes.draw do
  
  root 'users#index'
  post '/sessions' => 'users#create'
  get '/homepage/:id' => 'resources#index'
  get '/food' => 'resources#show_food'

end
