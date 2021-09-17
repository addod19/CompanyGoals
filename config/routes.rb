Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :goals
  # get '/show_goal', to: 'goals#show'
  # patch '/update_goal', to: 'goals#update'
end
