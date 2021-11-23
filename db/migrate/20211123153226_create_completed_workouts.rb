class CreateCompletedWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :completed_workouts do |t|
      t.text :comment
      t.references :workout, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
