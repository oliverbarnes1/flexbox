class Exercise < ApplicationRecord
  has_many :workout_exercises
  has_one_attached :photo
end
