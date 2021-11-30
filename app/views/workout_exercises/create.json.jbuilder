# if @workout_exercise.persisted?
#   raise
#   json.form json.partial!('workouts/new_we_form.html.erb', workout: @workout, workout_exercise: WorkoutExercise.new)
  json.inserted_item json.partial!('workouts/workout_exercise.html.erb', workout_exercise: @workout_exercise, exercise: @exercise)
# else
#   json.form json.partial!('workouts/new_we_form.html.erb', workout: @workout, workout_exercise: @workout_exercise)
# end
