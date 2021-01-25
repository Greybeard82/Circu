Rails.application.routes.draw do
  get 'calc', to: 'pages#calc', as: 'calc'
  root to: 'pages#calc'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
