class CreateCalorieIntakes < ActiveRecord::Migration[8.0]
  def change
    create_table :calorie_intakes do |t|
      t.integer :athlete_id
      t.date :date
      t.string :meal
      t.decimal :calories
      t.text :food_items

      t.timestamps
    end
  end
end
