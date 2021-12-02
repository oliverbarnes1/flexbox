class Workout < ApplicationRecord
  has_many :completed_workouts, dependent: :destroy
  has_many :workout_exercises, dependent: :destroy
  belongs_to :user
  has_one_attached :photo
  acts_as_favoritable
end
