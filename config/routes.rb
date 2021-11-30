Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :workouts, only: [:index, :new, :create, :show, :edit, :update] do
    resources :workout_exercises, only: [:index, :new, :create, :show, :edit, :update]
  end
  resources :completed_workouts, only: [:index, :new, :create, :show]
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get '/auth/:strava/callback', to: 'workouts#index'
  post '/auth/:strava/callback', to: 'workouts#create'

  # get '/homepage', to: 'pages#homepage', as: 'homepage'
  # get '/workouts/:id/inprogress', to: 'pages#inprogress', as: 'inprogress'
end
