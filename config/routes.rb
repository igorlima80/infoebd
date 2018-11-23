Rails.application.routes.draw do
  resources :sales
  resources :purchases
  resources :products
  resources :product_categories
  resources :dailies
  resources :type_students
  resources :students
  resources :school_classes
  resources :teachers
  resources :periods
  devise_for :users

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'school_classes#index'
end
