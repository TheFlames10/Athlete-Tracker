Rails.application.routes.draw do
  # API routes
  namespace :api do
    namespace :v1 do
      post 'auth/login', to: 'auth#login'
      resources :users, only: [:create, :show, :update]  # User registration and management
      resources :athletes, only: [:index, :show, :create, :update] # Athlete management
      resources :teams, only: [:index, :show, :create, :update] # Teams management
      resources :athlete_workouts, only: [:index, :create, :show, :update] # Athlete workouts
      resources :calorie_intakes, only: [:index, :create, :show, :update] # Calorie intake tracking
      resources :progress_reports, only: [:index, :create, :show, :update] # Progress report tracking
    end
  end
end
