Rails.application.routes.draw do
  resources :crew_members
  resources :productions, only: [:index, :show]
end
