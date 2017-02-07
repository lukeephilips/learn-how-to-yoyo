Rails.application.routes.draw do
  root :to => 'lessons#index'
  resources :sections do
    resources :lessons
  end
end
