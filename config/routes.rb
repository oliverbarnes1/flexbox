Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#homepage'
  resources :workouts, only: [:index, :new, :create, :show, :edit, :update]
  resources :completed_workouts, only: [:index, :new, :create, :show]
  # get '/homepage', to: 'pages#homepage', as: 'homepage'
  # get '/workouts/:id/inprogress', to: 'pages#inprogress', as: 'inprogress'
end
