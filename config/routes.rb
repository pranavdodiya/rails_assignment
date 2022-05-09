Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#homepage'
  resources :patients
  resources :physicians
  resources :appointments
  resources :industries
  resources :sectors

end
