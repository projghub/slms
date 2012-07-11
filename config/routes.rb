Lms::Application.routes.draw do
  resources :permissions

  resources :grade_levels

  resources :answers

  resources :questions

  resources :quizzes

  resources :users

  resources :institutions

  resources :classrooms

  resources :submission_types

  resources :assignment_types

  resources :assignments

  match '/take_quiz/:id' => 'pages#take_quiz', :as => 'take_quiz', :via => 'get'
  match '/take_quiz' => 'pages#take_quiz_create', :as => 'take_quiz_create', :via => 'post'

  match '/join_class/:id' => 'pages#join_class', :as => 'join_class', :via => 'get'

  root :to => 'pages#index'
end
