Rails.application.routes.draw do
  jsonapi_resources :authors
  jsonapi_resources :books
end
