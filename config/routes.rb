Rails.application.routes.draw do
  
  root 'users#index'
  post '/sessions' => 'users#create'
  get '/homepage/:id' => 'resources#index'
  get '/food' => 'resources#show_food'
  get '/hospital' => 'resources#show_hospital'
  get '/mental_health' => 'resources#show_mentalhealth'
end
