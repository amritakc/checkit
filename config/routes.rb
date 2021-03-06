Rails.application.routes.draw do
  
  root 'users#index'
  post '/sessions' => 'users#create'
  get '/homepage' => 'resources#index'
  get '/food' => 'resources#show_food'
  get '/hospital' => 'resources#show_hospital'
  get '/mental_health' => 'resources#show_mentalhealth'
  get '/youth_shelter' => 'resources#show_youthshelter'
  get '/women_shelter' => 'resources#show_womenshelter'
  get '/signs' => 'users#show_signs'
  get '/trust' => 'users#show_trust'
  get '/form' => 'forms#index'
  post '/create_form' => 'forms#create'
  delete '/sessions/:id' => 'users#destroy'


end
