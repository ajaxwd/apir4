Rails.application.routes.draw do
  namespace :api, defautls: {format: "json"} do
    namespace :v1 do
      resources :users, only: [:create]
      resources :polls, controller: "my_polls", except: [:new, :edit]
    end
  end
end
