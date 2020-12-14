Rails.application.routes.draw do
  resources :users, only: [:new, :create]   
  get 'login', to: 'sessions#new'   
  post 'login', to: 'sessions#create'   
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  delete '/logout' => 'sessions#destroy'
  root 'sessions#welcome'
  get 'resumes', to: 'resumes#index'
  get 'new_resume', to: 'resumes#new'
  post 'resumes', to: 'resumes#create'
  put 'resume', to: 'resumes#update'
  delete 'resume', to: 'resumes#destroy'
end
