Rails.application.routes.draw do

  root to: "monthly_budgets#index"
  devise_for :users
  # , controllers: { registrations: 'registrations' }

  resources :monthly_budgets
  resources :categories do
    resources :expenses
  end
end