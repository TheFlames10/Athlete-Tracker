class CreateAthleteWorkouts < ActiveRecord::Migration[8.0]
  def change
    create_table :athlete_workouts do |t|
      t.integer :athlete_id
      t.date :date
      t.string :workout_type
      t.text :muscles_targeted
      t.integer :duration_minutes
      t.string :workout_name
      t.integer :sets
      t.integer :reps_per_set
      t.decimal :weight_per_rep
      t.text :notes

      t.timestamps
    end
  end
end
