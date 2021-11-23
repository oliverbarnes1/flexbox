class CompletedWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :user
  validates comment, length: { maximum: 300 }
end
