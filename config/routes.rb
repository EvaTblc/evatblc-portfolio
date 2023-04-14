Rails.application.routes.draw do
  root to: "pages#home"

  resources :pages, only: [:index] do
    collection do
      get :personal
      get :mention
    end
  end

  resources :projects, only: [:index] do
    collection do
      get :planty
      get :pawsome
    end
  end

  resources :contacts, only: [:new, :create]
end
