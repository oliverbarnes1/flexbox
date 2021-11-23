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

workout = Workout.new(
  name: "Sweaty warmup!",
  category: "warmup",
  sport: "skiing",
  difficulty: "🥵",
  workout_duration: "30",
  equipment: "Nothing needed for this one!",
  muscle_group: "quads",
  description: "very tough, you  will be sweating like cray cray",
  user_id: user1.id
)
puts "saving"
workout.save!
puts "saved"

workout = Workout.new(
  name: "Relaxy laxative",
  category: "weights",
  sport: "shitting",
  difficulty: "😴",
  workout_duration: "10",
  equipment: "Nothing needed for this one!",
  muscle_group: "glutes",
  description: "if you want a good stretch before a tough shit I have the Warmup for YOU!",
  user_id: user1.id
)
puts "saving"
workout.save!
puts "saved"
