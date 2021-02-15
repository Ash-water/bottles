Rails.application.routes.draw do

  root to: "ideas#top"
  
  resources :ideas, only: [:index, :new, :create]
  get 'ideas/top', to: 'ideas#top'

end