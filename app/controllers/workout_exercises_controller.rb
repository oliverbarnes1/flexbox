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
    @exercise = Exercise.find(@workout_exercise.exercise_id)

    respond_to do |format|
      if @workout_exercise.save
        format.html { redirect_to edit_workout_path(@workout) }
        # format.js {
        #   return render partial: 'workouts/workout_exercise', locals: {workout_exercise: @workout_exercise, exercise: @exercise}
        # }
        format.json
        # render json: @workout_exercise
        # format.json
      end
    end

    # if @workout_exercise.save
    #   redirect_to workout_path(@workout), notice: 'Workout Exercise was successfully created.'
    # else
    #   render :new
    # end
  end

  def show
  end

  def edit
    @workout_exercise = WorkoutExercise.find(params[:id])
    @workout = Workout.find(params[:workout_id])
  end

  def update
    @workout = Workout.find(params[:workout_id])
    @workout_exercise.update(workoutexercise_params)
    if @workout_exercise.save
      redirect_to edit_workout_path(@workout), notice: 'Workout Exercise was successfully updated.'
    else
      render notice: 'Failed.'
    end
  end

  def destroy
    @workout = Workout.find(params[:workout_id])
    @workout_exercise = WorkoutExercise.find(params[:id])
    @workout_exercise.destroy
    redirect_to edit_workout_path(@workout)
  end

  private

  def set_workoutexercise
    @workout_exercise = WorkoutExercise.find(params[:id])
  end

  def workoutexercise_params
    params.require(:workout_exercise).permit(:exercise_id, :reps, :exercise_duration, :sets, :weight, :sets_rests, :image_url, :photo)
  end
end
