Rails.application.routes.draw do
  root to: 'destinations#index'
  resources :destinations, only: [:index], :path => "bonsplans"
end
