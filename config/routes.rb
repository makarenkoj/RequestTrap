Rails.application.routes.draw do
  resources :requests

  root 'requests#show'

  get '/:trap_id/requests', to: 'requests#index'

  match '/:trap_id', to: 'requests#create', via: :all

  mount ActionCable.server => '/cable'
end
