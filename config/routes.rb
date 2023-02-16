Rails.application.routes.draw do
  devise_for :teachers
  devise_for :students
  resources :teachers, only: [:show, :destroy]
  resources :students, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tweets do
    resources :comments, only: [:create]
  end
  get 'student_tweet/:id' => 'tweets#show2', as: :show2

  root 'tweets#index'
end
