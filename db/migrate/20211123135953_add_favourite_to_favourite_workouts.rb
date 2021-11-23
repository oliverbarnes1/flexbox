class AddFavouriteToFavouriteWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :favourite_workouts, :favourite, :boolean, default: false
  end
end
