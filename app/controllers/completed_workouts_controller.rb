class CompletedWorkoutsController < ApplicationController
  def index
    @completed_workouts = CompletedWorkout.where(user_id: current_user.id).to_a
    @workouts = Workout.all
  end

  def show
    @completed_workout = CompletedWorkout.find_by(id: params[:id])
    @workout = CompletedWorkout.find_by(@completedworkout.workout_id)
  end

  def new
    @completed_workout = CompletedWorkout.new
  end

  def create
    #something to do with "Workout" needs to happen here
    @completed_workout = CompletedWorkout.create(completed_workout_params)
  end

  private

  # params etc

end
