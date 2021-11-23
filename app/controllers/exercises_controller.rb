class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show]

  def index
    if params[:query].present?
      @exercises = Exercise.search_by_name_category_sport_and_difficulty(params[:query])
    else
      @exercises = Exercise.all
    end
  end

  def show
  end

  private

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end

  def exercise_params
    params.require(:exercise).permit(:name, :category, :sport, :difficulty, :description, :muscle_group, :exercise_image)
  end
end
