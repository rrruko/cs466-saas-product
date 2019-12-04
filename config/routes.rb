Rails.application.routes.draw do
  get 'main/index'
  get '/buy', to: 'main#buy'
  post '/buy', to: 'main#charge'
  get '/success', to: 'main#success'
  root 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
