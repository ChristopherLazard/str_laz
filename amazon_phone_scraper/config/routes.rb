Rails.application.routes.draw do
  root 'phones#index'
  get 'phones', to: 'phones#index'
end