Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teachers
      resources :grades
      resources :alumns
      resources :courses
      resources :sessions, only: %i[ create ]
      get 'logged_in', to: 'sessions#logged_in'
      delete 'logout', to: 'sessions#logout'
    end
  end
end
