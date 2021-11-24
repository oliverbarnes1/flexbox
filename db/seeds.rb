# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.new(
  email: "gym@bro.roidz",
  password: "123123"
)
puts "saving"
user1.save!
puts "saved"

##############################################################

workout1 = Workout.new(
  name: "All Round Warmup!",
  category: "Warmup",
  sport: "Any",
  difficulty: "🥵",
  workout_duration: "30",
  equipment: "None",
  muscle_group: "quads, Abs",
  description: "A good started exercise to get correctly warmed up before a big activity.",
  user_id: user1.id
)
puts "saving"
workout1.save!
puts "saved"

workout2 = Workout.new(
  name: "💀Intense Warmup💀",
  category: "weights",
  sport: "Any",
  difficulty: "🤮",
  workout_duration: "10",
  equipment: "None",
  muscle_group: "glutes, Abs",
  description: "if you want a good warmup to get you sweating by the end this is the one for you",
  user_id: user1.id
)
puts "saving"
workout2.save!
puts "saved"



##################################################################################

exercise1 = Exercise.new(
  name: "Lunges",
  category: "Warmup",
  sport: "Running",
  difficulty: "😀",
  muscle_group: "Legs",
  description: "Lunges increaseyour balance also increasing strength in your legs and glutes.",
  exercise_image: "https://i0.wp.com/thumbs.gfycat.com/AltruisticFantasticCub-size_restricted.gif?w=1155&h=840"
)
puts "saving"
exercise1.save!
puts "saved"

exercise2 = Exercise.new(
  name: "Squat",
  category: "Weights",
  sport: "Gymnastics",
  difficulty: "🥵",
  muscle_group: "Quadriceps femoris",
  description: "A squat is a strength exercise in which the trainee lowers their hips from a standing position and then stands back up",
  exercise_image: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Kniebeuge.jpg"
)
puts "saving"
exercise2.save!
puts "saved"


exercise3 = Exercise.new(
  name: "Plank",
  category: "Warmup",
  sport: "Boxing",
  difficulty: "🥵",
  muscle_group: "Abs",
  description: "The plank is an isometric core strength exercise that involves maintaining a position similar to a push-up for the maximum possible time",
  exercise_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/A_U.S._Coast_Guard_recruit%2C_assigned_to_Company_Oscar_188%2C_performs_a_plank_during_incentive_training_at_Coast_Guard_Training_Center_Cape_May_in_Cape_May%2C_N.J.%2C_July_31%2C_2013_130731-G-WA946-943.jpg/440px-thumbnail.jpg"
)
puts "saving"
exercise3.save!
puts "saved"


exercise4 = Exercise.new(
  name: "Push-up",
  category: "Warmup",
  sport: "Fitness",
  difficulty: "🤮",
  muscle_group: "Abs",
  description: "Traditional pushups are beneficial for building upper body strength",
  exercise_image: "https://us.123rf.com/450wm/lioputra/lioputra2010/lioputra201000171/157886721-man-character-doing-push-ups-flat-vector-illustration-isolated-on-different-layers.jpg?ver=6"
)
puts "saving"
exercise4.save!
puts "saved"


exercise5 = Exercise.new(
  name: "Star jump",
  category: "Warmup",
  sport: "Fitness",
  difficulty: "😀",
  muscle_group: "Legs",
  description: "jumping exercise performed by jumping to a position with the legs spread wide and the hands going overhead, and then returning to a position with the feet together and the arms at the sides.",
  exercise_image: "https://blogscdn.thehut.net/wp-content/uploads/sites/505/2018/01/18225846/JumpingJack-StarJump_2.jpg"
)
puts "saving"
exercise5.save!
puts "saved"


exercise6 = Exercise.new(
  name: "Mountain climber",
  category: "Warmup",
  sport: "Fitness",
  difficulty: "🥵",
  muscle_group: "Legs",
  description: "Mountain climbers is an explosive bodyweight exercise which engages multiple muscle groups at once helping to improve your balance, agility, coordination, strength, flexibility and blood circulation",
  exercise_image: "https://media1.popsugar-assets.com/files/thumbor/Iu8waoj6rmL6c7B8gZUdS1ZIa3I/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2017/06/08/791/n/1922729/c4943793a2ba2dd5_SlowerClimbers.gif"
)
puts "saving"
exercise6.save!
puts "saved"


# exercise = Exercise.new(
#   name: "",
#   category: "",
#   sport: "",
#   difficulty: "😴😀🥵🤮💀",
#   muscle_group: "",
#   description: "",
#   exercise_image: ""
# )
# puts "saving"
# exercise.save!
# puts "saved"



##################################################################################################


workout_exercise1 = WorkoutExercise.new(
  workout_id: workout1.id,
  exercise_id: exercise1.id,
  reps: 10,
  exercise_duration: 10,
  sets: 3,
)
puts "saving"
workout_exercise1.save!
puts "saved"

workout_exercise2 = WorkoutExercise.new(
  workout_id: workout1.id,
  exercise_id: exercise2.id,
  reps: 10,
  exercise_duration: 10,
  sets: 3,
)
puts "saving"
workout_exercise2.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout1.id,
  exercise_id: exercise3.id,
  exercise_duration: 60,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout1.id,
  exercise_id: exercise4.id,
  reps: 20,
  exercise_duration: 30,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout1.id,
  exercise_id: exercise5.id,
  reps: 50,
  exercise_duration: 10,
  sets: 2,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout1.id,
  exercise_id: exercise6.id,
  reps: 50,
  exercise_duration: 10,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"



workout_exercise = WorkoutExercise.new(
  workout_id: workout2.id,
  exercise_id: exercise2.id,
  reps: 10,
  exercise_duration: 10,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"
