Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :goals
  post '/signup', to: 'users#create'
  post 'auth/signin', to: 'authentication#authenticate'
end
