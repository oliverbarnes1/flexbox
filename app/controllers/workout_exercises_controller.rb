class WorkoutExercisesController < ApplicationController
  before_action :set_workoutexercise, only: [:show, :update]

  def new
    @workoutexercise = WorkoutExercise.new
  end

  def create
    @workoutexercise = WorkoutExercise.new(workoutexercise_params)
    @user = current_user
    @workoutexercise.user = @user

    if @workoutexercise.save
      redirect_to @workoutexercise, notice: 'Workout Exercise was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def update
    if @workoutexercise.update(workoutexercise_params)
      redirect_to @workoutexercise, notice: 'Workout Exercise was successfully updated.'
    else
      render notice: 'Workout Exercise already exists'
    end
  end

  private

  def set_workoutexercise
    @workoutexercise = WorkoutExercise.find(params[:id])
  end

  def workoutexercise_params
    params.require(:workoutexercise).permit(:reps, :exercise_duration, :sets, :weight, :sets_rests, :image_url, :photo)
  end
end
