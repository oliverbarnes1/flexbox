class CreateWorkoutExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_exercises do |t|
      t.references :exercise, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true
      t.integer :reps
      t.integer :exercise_duration
      t.integer :sets
      t.integer :weight
      t.integer :sets_rests
      t.timestamps
    end
  end
end
