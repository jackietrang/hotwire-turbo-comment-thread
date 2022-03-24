Rails.application.routes.draw do
  root "quotes#index"
  resources :quotes do
    resources :replies, except: [:index, :show]
  end
end
