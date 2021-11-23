class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @user = current_user
    @workout.user = @user
    if @workout.save
      redirect_to @workout
    else
      render :new
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:name, :category, :sport, :difficulty, :workout_duration, :equipment, :muscle_group, :description)
  end
end
