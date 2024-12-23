# Create a coach
coach = User.create!(
  role: "coach",
  first_name: "John",
  last_name: "Smith",
  email: "john.smith@example.com",
  password: "password"
)

# Create a team
team = Team.create!(
  name: "Track Stars",
  coach_id: coach.id
)

# Create athletes
athlete1 = Athlete.create!(
  user: User.create!(
    role: "athlete",
    first_name: "Jane",
    last_name: "Doe",
    email: "jane.doe@example.com",
    password: "password"
  ),
  team: team,
  age: 25,
  height: 1.7,
  weight: 65.0
)

athlete2 = Athlete.create!(
  user: User.create!(
    role: "athlete",
    first_name: "Tom",
    last_name: "Brown",
    email: "tom.brown@example.com",
    password: "password"
  ),
  team: team,
  age: 22,
  height: 1.8,
  weight: 75.0
)

# Add workouts
workout1 = Workout.create!(name: "Bench Press", description: "Upper body strength training")
workout2 = Workout.create!(name: "Squats", description: "Lower body strength training")

# Log athlete workouts
AthleteWorkout.create!(
  athlete: athlete1,
  date: Date.today,
  workout_type: "in-depth",
  workout_name: "Bench Press",
  sets: 4,
  reps_per_set: 10,
  weight_per_rep: 50.0,
  notes: "Felt strong"
)

AthleteWorkout.create!(
  athlete: athlete2,
  date: Date.today,
  workout_type: "simple",
  muscles_targeted: "Legs",
  duration_minutes: 45
)

# Log calorie intake
CalorieIntake.create!(
  athlete: athlete1,
  date: Date.today,
  meal: "Breakfast",
  calories: 400,
  food_items: "Oatmeal, Banana, Coffee"
)

# Log progress reports
ProgressReport.create!(
  athlete: athlete1,
  date: Date.today,
  weight: 64.5,
  notes: "Weight is stable, good energy levels"
)
