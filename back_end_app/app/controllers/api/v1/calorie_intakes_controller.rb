class Api::V1::CalorieIntakesController < ApplicationController
  def index
    calorie_intakes = CalorieIntake.all
    render json: calorie_intakes
  end

  def show
    calorie_intake = CalorieIntake.find(params[:id])
    render json: calorie_intake
  end

  def create
    calorie_intake = CalorieIntake.new(calorie_intake_params)
    if calorie_intake.save
      render json: calorie_intake, status: :created
    else
      render json: { errors: calorie_intake.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    calorie_intake = CalorieIntake.find(params[:id])
    if calorie_intake.update(calorie_intake_params)
      render json: calorie_intake
    else
      render json: { errors: calorie_intake.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def calorie_intake_params
    params.require(:calorie_intake).permit(:athlete_id, :date, :meal, :calories, :food_items)
  end
end
