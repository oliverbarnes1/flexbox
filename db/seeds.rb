# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

WorkoutExercise.destroy_all
Workout.destroy_all
User.destroy_all
Exercise.destroy_all

user1 = User.new(
  email: "the@rock.roidz",
  password: "123123"
)
puts "saving"
user1.save!
puts "saved"

##############################################################

workout1 = Workout.new(
  name: "🏋️‍♀️All Round Warmup!🏋️‍♀️",
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
  exercise_image: "https://thumbs.gfycat.com/InferiorFalseGalago-max-1mb.gif"
)
puts "saving"
exercise1.save!
puts "saved"

exercise2 = Exercise.new(
  name: "Squat",
  category: "Weights",
  sport: "Gymnastics",
  difficulty: "🥵",
  muscle_group: "Quads",
  description: "A squat is a strength exercise in which the trainee lowers their hips from a standing position and then stands back up",
  exercise_image: "https://www.verywellfit.com/thmb/NF55yRjCpuEMUVtibfSepA_F9l8=/3000x2000/filters:fill(FFDB5D,1)/79--Sumo-SquatGIF-a10fc1d5c41f4b3cbb9ab82dca25936b.gif"
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
  exercise_image: "https://hips.hearstapps.com/ame-prod-menshealth-assets.s3.amazonaws.com/main/assets/plank.gif?resize=480:*"
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
  exercise_image: "https://i.imgur.com/zLoQVoA.gif"
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
  exercise_image: "https://cdn.dribbble.com/users/2931468/screenshots/5720362/jumping-jack.gif"
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
  exercise_image: "https://kaizenminutes.com/wp-content/uploads/2020/04/mountain-climbers.gif"
)
puts "saving"
exercise6.save!
puts "saved"


exercise7 = Exercise.new(
  name: "Flutter kicks",
  category: "Warmup",
  sport: "Fitness",
  difficulty: "😀",
  muscle_group: "Abs",
  description: "Although they target your core, flutter kicks also zero in on the hips",
  exercise_image: "https://i.pinimg.com/originals/04/e4/42/04e4425ceaf57c8d34b37837762044b5.gif"
)
puts "saving"
exercise7.save!
puts "saved"


exercise8 = Exercise.new(
  name: "Burpees",
  category: "Warmup",
  sport: "Fitness",
  difficulty: "🥵",
  muscle_group: "Full-body",
  description: "Burpees are a type of high-impact plyometric exercise",
  exercise_image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/workouts/2016/03/burpee-1457045324.gif"
)
puts "saving"
exercise8.save!
puts "saved"

exercise9 = Exercise.new(
  name: "Bicycle crunch",
  category: "Warmup",
  sport: "Fitness",
  difficulty: "🤮",
  muscle_group: "Abs",
  description: "Bicycle crunchs are a highly intense abdominal exercise",
  exercise_image: "https://177d01fbswx3jjl1t20gdr8j-wpengine.netdna-ssl.com/wp-content/uploads/2019/06/Bicycle-Crunch.gif"
)
puts "saving"
exercise9.save!
puts "saved"

exercise10 = Exercise.new(
  name: "Superman",
  category: "Warmup",
  sport: "Fitness",
  difficulty: "🥵",
  muscle_group: "Abs",
  description: "Work your abs with this intense excercise",
  exercise_image: "https://hips.hearstapps.com/ame-prod-menshealth-assets.s3.amazonaws.com/main/assets/superman.gif?resize=480:*"
)
puts "saving"
exercise10.save!
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
  exercise_duration: nil,
  sets: 3,
)
puts "saving"
workout_exercise1.save!
puts "saved"

workout_exercise2 = WorkoutExercise.new(
  workout_id: workout1.id,
  exercise_id: exercise2.id,
  reps: 10,
  exercise_duration: nil,
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
  exercise_duration: nil,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout1.id,
  exercise_id: exercise5.id,
  reps: 50,
  exercise_duration: nil,
  sets: 2,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout2.id,
  exercise_id: exercise6.id,
  reps: 50,
  exercise_duration: nil,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"



workout_exercise = WorkoutExercise.new(
  workout_id: workout2.id,
  exercise_id: exercise7.id,
  reps: 10,
  exercise_duration: nil,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout2.id,
  exercise_id: exercise3.id,
  reps: 10,
  exercise_duration: nil,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout2.id,
  exercise_id: exercise2.id,
  reps: 10,
  exercise_duration: nil,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout2.id,
  exercise_id: exercise1.id,
  reps: 10,
  exercise_duration: nil,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"







#######################################################################################


workout_exercise = WorkoutExercise.new(
  workout_id: workout2.id,
  exercise_id: exercise4.id,
  reps: 20,
  exercise_duration: 30,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout2.id,
  exercise_id: exercise5.id,
  reps: 50,
  exercise_duration: 10,
  sets: 2,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout2.id,
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
  exercise_id: exercise7.id,
  reps: 10,
  exercise_duration: 10,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout2.id,
  exercise_id: exercise8.id,
  reps: 10,
  exercise_duration: 10,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout2.id,
  exercise_id: exercise9.id,
  reps: 10,
  exercise_duration: 10,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"

workout_exercise = WorkoutExercise.new(
  workout_id: workout2.id,
  exercise_id: exercise10.id,
  reps: 10,
  exercise_duration: 10,
  sets: 3,
)
puts "saving"
workout_exercise.save!
puts "saved"
