Rails.application.routes.draw do
  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  get 'projects', to: 'projects#index'

  resources :projects

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
