Rails.application.routes.draw do

  get 'educations/new'
  get 'educations/create'
  get 'educations/destroy'

  get 'profiles/correct_user' # current_user

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'help' => 'static_pages#help'

  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get  'users' => 'users#index'
  get  'show_users' => 'users#show'

  delete 'logout' => 'sessions#destroy'

  # get 'show_educations' => 'educations#show'
  # get 'profiles' => 'profiles#new'
  # post  'edit_profiles' => 'profiles#update'

  resources :users
  #resources :profiles, only: [:update]

end
