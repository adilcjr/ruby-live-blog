Rails.application.routes.draw do

  get 'post/create'
  get 'post/show'
  post 'post/store'

  root 'home#index'
  
end
