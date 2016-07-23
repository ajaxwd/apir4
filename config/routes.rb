Rails.application.routes.draw do
  namespace :api, defautls: {format: "json"} do
    namespace :v1 do
      resources :users
    end
  end
end
