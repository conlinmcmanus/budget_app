Rails.application.routes.draw do
  root to: 'monthly_budgets#index'
  devise_for :users, controllers: { registrations: 'registrations' }
end
