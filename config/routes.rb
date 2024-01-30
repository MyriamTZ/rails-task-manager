Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "tasks", to: "tasks#index" # voir la liste de toutes les tâches
  get "tasks/new", to: "tasks#new", as: :new_task # envoyer les données (via un form)
  post "tasks", to: "tasks#create" # réception des données
  get "tasks/:id", to: "tasks#show", as: :task # voir le détail d'une seule tâche
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_tasks
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy"
end
