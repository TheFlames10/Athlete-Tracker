class Api::V1::ProgressReportsController < ApplicationController
  def index
    reports = ProgressReport.all
    render json: reports
  end

  def show
    report = ProgressReport.find(params[:id])
    render json: report
  end

  def create
    report = ProgressReport.new(progress_report_params)
    if report.save
      render json: report, status: :created
    else
      render json: { errors: report.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    report = ProgressReport.find(params[:id])
    if report.update(progress_report_params)
      render json: report
    else
      render json: { errors: report.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def progress_report_params
    params.require(:progress_report).permit(:athlete_id, :date, :weight, :notes)
  end
end
