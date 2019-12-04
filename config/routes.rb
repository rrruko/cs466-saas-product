Rails.application.routes.draw do
  get 'main/index'
  post '/main', to: 'main#charge'
  root 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
