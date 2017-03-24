Rails.application.routes.draw do
  root to: "monthly_budgets#index"
  devise_for :users, controllers: { registrations: 'registrations' } do
    resources :categories do
      resources :expenses
    end
  end

end

