Rails.application.routes.draw do
  # get 'films/'
  # This is the same thing essentially
  resources :films, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
