class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :category
      t.string :sport
      t.string :difficulty
      t.integer :workout_duration
      t.references :user, null: false, foreign_key: true
      t.string :equipment
      t.string :muscle_group
      t.text :description

      t.timestamps
    end
  end
end
