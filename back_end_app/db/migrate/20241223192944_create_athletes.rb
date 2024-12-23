class CreateAthletes < ActiveRecord::Migration[8.0]
  def change
    create_table :athletes do |t|
      t.integer :user_id
      t.integer :team_id
      t.integer :age
      t.decimal :height
      t.decimal :weight

      t.timestamps
    end
  end
end
