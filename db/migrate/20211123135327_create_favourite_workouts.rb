class CreateFavouriteWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :favourite_workouts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
