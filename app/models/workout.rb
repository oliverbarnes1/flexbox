class Workout < ApplicationRecord
  has_many :completed_workouts
  has_many :workout_exercises
  belongs_to :user
  has_one_attached :photo
  acts_as_favoritable
end
