class StudyProtocolsController < ApplicationController
  def new
    @study_protocol = StudyProtocol.new(study: study)
  end

  def create
    @study_protocol = StudyProtocol.new(study_protocol_params)

    if @study_protocol.save
      redirect_to study_path(study)
    else
      render :new
    end
  end

  private

  def study
    @study ||= Study.find(params[:study_id])
  end

  def study_protocol_params
    params.require(:study_protocol)
      .permit(:instructions)
      .merge(study_id: params[:study_id])
  end
end
