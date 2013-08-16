Matchbrick::Application.routes.draw do
  resources :kits, only: [:create, :index, :show, :destroy]
  root to: "root#index"
end
