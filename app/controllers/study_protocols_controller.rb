class StudyProtocolsController < ApplicationController
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def new
    @study_protocol = StudyProtocol.new(study: study)
    authorize(@study_protocol)
  end

  def create
    @study_protocol = StudyProtocol.new(study_protocol_params)
    authorize(@study_protocol)

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

  def user_not_authorized
    flash[:alert] = "Only Principal Investigators may create study protocols"
    redirect_back(fallback_location: root_path)
  end

  def study_protocol_params
    params.require(:study_protocol)
      .permit(:instructions)
      .merge(study_id: params[:study_id])
  end
end
