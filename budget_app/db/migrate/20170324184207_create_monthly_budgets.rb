class CreateMonthlyBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :monthly_budgets do |t|
      t.string :month
      t.integer :user_id

      t.timestamps
    end
  end
end
