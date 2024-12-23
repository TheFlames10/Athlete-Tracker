class Api::V1::AthleteWorkoutsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    workouts = AthleteWorkout.all
    render json: workouts
  end

  def show
    workout = AthleteWorkout.find(params[:id])
    render json: workout
  end

  def create
    workout = AthleteWorkout.new(workout_params)
    if workout.save
      render json: workout, status: :created
    else
      render json: { errors: workout.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    workout = AthleteWorkout.find(params[:id])
    if workout.update(workout_params)
      render json: workout
    else
      render json: { errors: workout.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def workout_params
    params.require(:athlete_workout).permit(:athlete_id, :date, :workout_type, :workout_name, :sets, :reps_per_set, :weight_per_rep, :muscles_targeted, :duration_minutes, :notes)
  end
end
