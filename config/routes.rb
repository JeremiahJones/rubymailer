Rails.application.routes.draw do
  resources :poopsticks
  root 'subscriber#index'
  post '/subscribe' => 'subscriber#create'
  resources :subscriber
end
