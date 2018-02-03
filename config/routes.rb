Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  get 'projects', to: 'projects#index'

  resources :projects do
    resources :programmes
  end


  resources :oases


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
