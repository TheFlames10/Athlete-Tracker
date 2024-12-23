class CreateProgressReports < ActiveRecord::Migration[8.0]
  def change
    create_table :progress_reports do |t|
      t.integer :athlete_id
      t.date :date
      t.decimal :weight
      t.text :notes

      t.timestamps
    end
  end
end
