Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  get '/lesson/test', to: 'lesson#test'
  get '/lesson/:id', to: 'lesson#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
