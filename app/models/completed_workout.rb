class CompletedWorkout < ApplicationRecord
  belongs_to :workout
  belongs_to :user
end
