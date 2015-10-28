class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
        t.column :amount, :integer
        t.column :exercise_id, :integer
        t.column :food_id, :integer

        t.timestamps
    end
  end
end
