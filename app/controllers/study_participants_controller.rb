class StudyParticipantsController < ApplicationController
  def index
    @study_participants = StudyParticipant.where(study_id: params[:study_id])
  end

  def new
    @study_participant = StudyParticipant.new(study: study)
  end

  def create
    enrollment = StudyEnrollment.new(study_participant_params)

    if enrollment.create
      redirect_to study_study_participants_path
    else
      @study_participant = enrollment.study_participant
      render :new
    end
  end

  private

  def study
    @study ||= Study.find(params[:study_id])
  end

  def study_participant_params
    params.require(:study_participant)
      .permit(:first_name, :last_name, :email)
      .merge(study_id: params[:study_id])
  end
end
