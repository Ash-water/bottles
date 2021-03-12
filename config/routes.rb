Rails.application.routes.draw do

  devise_for :users
  root to: "ideas#top"
  
  resources :ideas do
    collection do
    get 'top'
    get 'introduction'
    get 'index2'
    end
  end

  get 'share_ideas/:id', to: 'ideas#share'
end