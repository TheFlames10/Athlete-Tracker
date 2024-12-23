class Api::V1::AthletesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    athletes = Athlete.all
    render json: athletes
  end

  def show
    athlete = Athlete.find(params[:id])
    render json: athlete
  end

  def create
    athlete = Athlete.new(athlete_params)
    if athlete.save
      render json: athlete, status: :created
    else
      render json: { errors: athlete.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    athlete = Athlete.find(params[:id])
    if athlete.update(athlete_params)
      render json: athlete
    else
      render json: { errors: athlete.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def athlete_params
    params.require(:athlete).permit(:user_id, :team_id, :age, :height, :weight)
  end
end
