class DropFavouriteWorkout < ActiveRecord::Migration[6.0]
  def up
    drop_table :favourite_workouts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
