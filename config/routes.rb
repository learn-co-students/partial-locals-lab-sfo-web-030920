Rails.application.routes.draw do
  resources :classrooms, only: [:index, :show]
  resources :students, only: [:index, :new, :create, :show]
end

