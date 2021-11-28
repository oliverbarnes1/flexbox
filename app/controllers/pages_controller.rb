class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @workouts = Workout.all
  end

  def dashboard
    @workouts = Workout.all
  end
end
