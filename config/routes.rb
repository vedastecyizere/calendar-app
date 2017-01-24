Rails.application.routes.draw do
  get "/index", to: "plans#index"
  get "/plans", to: "plans#all_plans"
  get "/plans/new", to: "plans#new"
  get "/plans/:id", to: "plans#show"
  post "/plans", to: "plans#create"
  get "/plans/:id/edit", to: "plans#edit"
  patch "/plans/:id", to: "plans#update"
  delete "/plans/:id", to: "plans#destroy"
end
