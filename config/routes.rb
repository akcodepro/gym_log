Rails.application.routes.draw do
  get 'exercises/create'
  get 'exercises/destroy'
  resources :workouts do
    resources :exercises, only: [:create, :destroy]
  end
  root "workouts#index"
end
