Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :venues 
  resources :games
 
  get "profiles/:id" => "profiles#show", as: :profile
  get "profiles" => "profiles#index"
  get "calendar" => 'profiles#calendar'

  
  root 'welcome#index'

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

end
