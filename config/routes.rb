Onewordsuggestion::Application.routes.draw do
  get "sandino/index"
  match '/sandino' => "sandino#index"
  root :to => 'suggestions#index'
  get "suggestions/index"

  
end
