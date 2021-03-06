Rails.application.routes.draw do
  resources :articles

  resources :saml, only: :index do
    collection do
      get :sso
      post :acs
      get :metadata
      get :logout
    end
  end

  root to: 'saml#index'
end
