class StudyParticipantsController < ApplicationController
  def index
    @study_participants = StudyParticipant.where(study_id: params[:study_id])
  end

  def new
    @study_participant = StudyParticipant.new(study: study)
  end

  def create
    @study_participant = StudyParticipant.new(study_participant_params)

    if @study_participant.save
      redirect_to study_study_participants_path
    else
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
