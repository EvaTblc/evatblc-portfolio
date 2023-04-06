Rails.application.routes.draw do
  root to: "pages#home"

  resources :pages, only: [:index] do
    collection do
      get :personal
      get :contact
    end
  end

  resources :projects, only: [:index] do
    collection do
      get :planty
      get :pawsome
    end
  end
end
