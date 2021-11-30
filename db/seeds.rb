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
  email: "Bolt@gmail.com",
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
  difficulty: "😀",
  workout_duration: "30",
  equipment: "None",
  muscle_group: "Whole body",
  description: "A good workout to get your whole body warmed up and ready!",
  user_id: user1.id
)
puts "saving"
workout1.save!
puts "saved"

workout2 = Workout.new(
  name: "💀Intense Workout💀",
  category: "Workout",
  sport: "Any",
  difficulty: "🤮",
  workout_duration: "45",
  equipment: "None",
  muscle_group: "Whole body",
  description: "You will definitly be sweating by the end of this workout",
  user_id: user1.id
)
puts "saving"
workout2.save!
puts "saved"

##################################################################################

exercise = Exercise.new(
  name: "Push-up",
  category: "Workout",
  sport: "Workout",
  difficulty: "🤮",
  description: "A push-up is a common calisthenics exercise beginning from the prone position.",
  muscle_group: "Chest, shoulders, abs and triceps",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-5482bd7ac349.gif"
)
puts "saving"
exercise.save!
puts "saved"

exercise2 = Exercise.new(
  name: "Squat",
  category: "Workout",
  sport: "Workout",
  difficulty: "🥵",
  muscle_group: "Hamstrings, buttocks and quadriceps",
  description: "A squat is a strength exercise in which the trainee lowers their hips from a standing position and then stands back up",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-2c42ec3f99cf.gif"
)
puts "saving"
exercise2.save!
puts "saved"

exercise3 = Exercise.new(
  name: "Lunge",
  category: "Workout",
  sport: "Workout",
  difficulty: "😀",
  description: "A lunge can refer to any position of the human body where one leg is positioned forward with knee bent and foot flat on the ground while the other leg is positioned behind",
  muscle_group: "Abs, quadriceps, hamstrings and calves",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-f7244ae93b4c.gif"
)
puts "saving"
exercise3.save!
puts "saved"


exercise4 = Exercise.new(
  name: "Russian twist",
  category: "Workout",
  sport: "Workout",
  difficulty: "🥵",
  description: "The Russian twist is a simple abdominal exercise for working the core, shoulders, and hips.",
  muscle_group: "Abs",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-290567db0bfd.gif"
)
puts "saving"
exercise4.save!
puts "saved"

exercise5 = Exercise.new(
  name: "Plank",
  category: "Workout",
  sport: "Workout",
  difficulty: "💀",
  description: "is is a strength exercise that involves maintaining a position similar to a push-up for the maximum possible time",
  muscle_group: "Abs",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-46fb1d165284.gif"
)
puts "saving"
exercise5.save!
puts "saved"

exercise6 = Exercise.new(
  name: "Sit-up",
  category: "Workout",
  sport: "Workout",
  difficulty: "🥵",
  description: "The sit-up is an abdominal endurance training exercise to strengthen, tighten and tone the abdominal muscles",
  muscle_group: "Abs and back",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-ae4c609a1ccf.gif"
)
puts "saving"
exercise6.save!
puts "saved"

exercise7 = Exercise.new(
  name: "Running",
  category: "Workout ",
  sport: "Workout",
  difficulty: "😴",
  description: "10K!!!! DO IT NOW",
  muscle_group: "Legs",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-2f54be4576c6.gif"
)
puts "saving"
exercise7.save!
puts "saved"

exercise8 = Exercise.new(
  name: "Mountain climber",
  category: "Workout",
  sport: "Workout",
  difficulty: "😀",
  description: "Mountain climbers is an explosive bodyweight exercise which engages multiple muscle groups at once helping to improve your balance, agility, coordination, strength, flexibility and blood circulation",
  muscle_group: "Abs, lower back, hamstrings and glutes",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-a248716c18fd.gif"
)
puts "saving"
exercise8.save!
puts "saved"

#####################################################################


exercise9 = Exercise.new(
  name: "Quad stretch",
  category: "Warmup",
  sport: "Warmup",
  difficulty: "🥵",
  description: "This simple stretch exercise is great for fixing your muscles, anytime, anywhere",
  muscle_group: "Quads",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-34b8092a09bc.gif"
)
puts "saving"
exercise9.save!
puts "saved"

exercise10 = Exercise.new(
  name: "Hamstring stretch",
  category: "Warmup",
  sport: "Warmup",
  difficulty: "😴",
  description: "Stretching the hamstrings while standing may provide a deeper stretch, so they must be performed with caution and using correct posture,",
  muscle_group: "Hamstring",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-c0ae1e4bbcc7.gif"
)
puts "saving"
exercise10.save!
puts "saved"

exercise11 = Exercise.new(
  name: "Calve Stretch",
  category: "Warmup",
  sport: "Warmup",
  difficulty: "😴",
  description: "This can help lengthen the muscle fiber and possibly lessen the pain you’re experiencing",
  muscle_group: "Calve",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-27c2d235c570.gif"
)
puts "saving"
exercise11.save!
puts "saved"

exercise12 = Exercise.new(
  name: "Groin Stretch",
  category: "Warmup",
  sport: "Warmup",
  difficulty: "😀",
  description: "Ideal for after a workout to cool down",
  muscle_group: "Groin",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-ee172268eb92.gif"
)
puts "saving"
exercise12.save!
puts "saved"

exercise13 = Exercise.new(
  name: "Arm Stretch",
  category: "Warmup",
  sport: "Warmup",
  difficulty: "😀",
  description: "Cross-Body Shoulder Stretch",
  muscle_group: "Triceps",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-e7e8d0e42edb.gif"
)
puts "saving"
exercise13.save!
puts "saved"

exercise14 = Exercise.new(
  name: "Neck Stretch",
  category: "Warmup",
  sport: "Warmup",
  difficulty: "😴",
  description: "A basic exercise that is important for stretching the chest and shoulder muscles is the corner stretch",
  muscle_group: "Neck",
  exercise_image: "https://im3.ezgif.com/tmp/ezgif-3-15d57c67c942.gif"
)
puts "saving"
exercise14.save!
puts "saved"
