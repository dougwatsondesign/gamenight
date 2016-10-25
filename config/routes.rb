Rails.application.routes.draw do
  devise_for :users
  resources :events, :venues

  
  root 'welcome#index'

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'games' => 'welcome#games'

  get 'events' => 'welcome#events'

end
