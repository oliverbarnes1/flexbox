class FavouriteWorkoutsController < ApplicationController
  def create
    FavouriteWorkout.create(user_id: current_user, workout_id: Workout.find_by(id: params[:id]).id)
    #unsure how this will work with a button
  end

  def update
    @favourite_workout = FavouriteWorkout.find_by(workout_id: Workout.find_by(id: params[:id]).id)
    @favouriteworkout.favourite = @favourite_workout.favourite ? false : true
  end
end
