Rails.application.routes.draw do

  # resources :deities
  #SCAFFOLD <<<<<<<


  # #NEW
  # get '/deities/new', to: "deities#new"

  # #INDEX
  # get '/deities', to: "deities#index"

  # #SHOW
  get '/deities/:id', to: "deities#show"


  # resources :deities, only: [:new, :index, :show]
  # Generator << ||| >>>>>



  # resources :users
  # resources :journals
  # resources :thoughts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
