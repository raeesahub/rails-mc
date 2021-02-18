Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :reviews
    resources :doses
  end

  resources :doses, only: :destroy
end
