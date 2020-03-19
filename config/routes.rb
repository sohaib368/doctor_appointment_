Rails.application.routes.draw do
  resources :free_doctors
  devise_for :doctors
  devise_for :patients
  resources :appointments
  resources :patients
  resources :doctors
  root  'free_doctors#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
