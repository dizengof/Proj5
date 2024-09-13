Rails.application.routes.draw do
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  resources :products
  resources :users
  get 'dialogs/welcome'
  get 'dialogs/first_meet'
  get 'dialogs/after_first_meet'
  get 'dialogs/ask_about_age'
  get 'dialogs/after_ask_about_age'
  get 'dialogs/date_info'



  # get 'welcome/start'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#start"
end
