class CompletedWorkoutsController < ApplicationController
  def index
    @completed_workouts = CompletedWorkout.where(user_id: current_user.id).to_a
    @workouts = @completed_workouts.map do |completed_workout|
      Workout.find(completed_workout.workout_id)
    end
  end

  def show
    @completed_workout = CompletedWorkout.find_by(id: params[:id])
    @workout = CompletedWorkout.find_by(@completedworkout.workout_id)
  end

  def new
    @completed_workout = CompletedWorkout.new
  end

  def create
    @workout = Workout.find(params[:format])
    @completed_workout = CompletedWorkout.create(workout_id: @workout.id, user_id: current_user.id)
    if @completed_workout.save
      redirect_to completed_workouts_path
    else
      raise
    end
  end

  private

  # params etc

end
