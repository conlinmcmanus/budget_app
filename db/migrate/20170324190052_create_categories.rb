class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.text :name
      t.integer :target
      t.belongs_to :monthly_budget
      t.timestamps
    end
  end
end
