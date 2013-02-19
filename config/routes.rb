Onewordsuggestion::Application.routes.draw do
  get "warriorv/index"
  match '/warriorv' => "warriorv#index"
  get "idea_masher/show"
  get '/sitcom' => "idea_masher#sitcom"
  get "sandino/index"
  match '/sandino' => "sandino#index"
  root :to => 'suggestions#index'
  get "suggestions/index"
end
