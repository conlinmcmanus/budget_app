class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.references :category, foreign_key: true
      t.text :name
      t.integer :amount_spent

      t.timestamps
    end
  end
end
