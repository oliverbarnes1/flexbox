class WorkoutExercisesController < ApplicationController
  before_action :set_workoutexercise, only: [:show, :update, :edit]

  def new
    @workout_exercise = WorkoutExercise.new
    @workout = Workout.find(params[:workout_id])
  end

  def create
    @workout_exercise = WorkoutExercise.new(workoutexercise_params)
    @workout = Workout.find(params[:workout_id])
    @workout_exercise.workout = @workout

    if @workout_exercise.save
      redirect_to workout_path(@workout)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @workout_exercise.update(workout_exercise_params)
      redirect_to @workout_exercise, notice: 'Successfully updated!'
    else
      render notice: 'Failed.'
    end
  end

  private

  def set_workoutexercise
    @workout_exercise = WorkoutExercise.find(params[:id])
  end

  def workoutexercise_params
    params.require(:workout_exercise).permit(:exercise_id, :reps, :exercise_duration, :sets, :weight, :sets_rests, :image_url, :photo)
  end
end
