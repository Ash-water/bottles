Rails.application.routes.draw do

  devise_for :users
  root to: "ideas#top"
  
  resources :ideas
  get 'ideas/top', to: 'ideas#top'

end