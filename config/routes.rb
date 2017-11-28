Rails.application.routes.draw do
  root 'friends#index'
  resources :friends
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
