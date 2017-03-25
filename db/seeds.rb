users = User.create(email: 'j@hmail.com', password: 'ssssss')

monthly_budgets = MonthlyBudget.create(month: 'June', user_id: 1)

10.times do Category.create(name: Faker::Commerce.department, monthly_budget_id: 1,target: rand(50..300))
end

(1..10).to_a.each do |x|
  Expense.create(name: Faker::Hipster.word, amount_spent: rand(20..100), category_id: x)
end
