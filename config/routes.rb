Rails.application.routes.draw do

  root to: "monthly_budgets#new"
  devise_for :users
  # , controllers: { registrations: 'registrations' }

  # post   '/categories', to: 'monthly_budget#create'
  get '/monthly_budgets/listing', to: 'monthly_budgets#listing'
  resources :monthly_budgets
  resources :categories do
    resources :expenses
  end
end
