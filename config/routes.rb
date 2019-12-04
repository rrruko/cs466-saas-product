Rails.application.routes.draw do
  get 'main/index'
  get '/buy', to: 'main#buy'
  post 'main/buy'
  post '/main', to: 'main#charge'
  root 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
