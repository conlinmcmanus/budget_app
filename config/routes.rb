Rails.application.routes.draw do

  root to: "monthly_budgets#index"
  devise_for :users
  # , controllers: { registrations: 'registrations' }

  post   '/monthly_budgets/:monthly_budget_id/categories', to: 'monthly_budget#create'
  resources :monthly_budgets
    resources :categories do
      resources :expenses
    end
  end
end