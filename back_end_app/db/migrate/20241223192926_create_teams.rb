class CreateTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :coach_id

      t.timestamps
    end
  end
end
