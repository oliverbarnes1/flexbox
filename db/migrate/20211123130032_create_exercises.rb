class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :category
      t.string :sport
      t.string :difficulty
      t.string :description
      t.string :muscle_group
      t.string :exercise_image

      t.timestamps
    end
  end
end
