class WorkoutsController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def toggle_favorite
    @workout = Workout.find_by(id: params[:id])
    current_user.favorited?(@workout) ? current_user.unfavorite(@workout) : current_user.favorite(@workout)
    respond_to do |format|
      format.js {}
    end
  end

  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @user = current_user
    @workout.user = @user
    if @workout.save
      redirect_to workouts_path
    else
      render :new
    end
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])
    if @workout.update(workout_params)
      redirect_to @workout, notice: 'workout was successfully updated.'
    else
      render :edit
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:id, :name, :category, :sport, :difficulty, :workout_duration, :equipment, :muscle_group, :description)
  end
end
