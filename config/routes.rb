Rails.application.routes.draw do
  resources :ducks, only: [:index, :show, :create, :new, :edit, :update]
  resources :students, only: [:index, :show, :create, :new, :edit, :update]
end

# Able to create a new duck with an association to a student (and make sure that
#   their name and type are not blank)