class Workout < ApplicationRecord
  has_many :completed_workouts, dependent: :destroy
  has_many :workout_exercises, dependent: :destroy
  belongs_to :user
  has_one_attached :photo
  acts_as_favoritable

  CATEGORY = ["Warmup", "Weights", "Cardio"]
  DIFFICULTY = ["1😴1", "2😀2", "3🥵3", "4🤮4", "5💀5"]
end
