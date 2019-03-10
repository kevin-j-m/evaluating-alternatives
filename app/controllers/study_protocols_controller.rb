class StudyProtocolsController < ApplicationController
  def new
    if current_user.principal_investigator?
      @study_protocol = StudyProtocol.new(study: study)
    else
      flash[:alert] = "Only Principal Investigators may create study protocols"
      redirect_back(fallback_location: root_path)
    end
  end

  def create
    if current_user.principal_investigator?
      create_study_protocol
    else
      flash[:alert] = "Only Principal Investigators may create study protocols"
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def study
    @study ||= Study.find(params[:study_id])
  end

  def create_study_protocol
    @study_protocol = StudyProtocol.new(study_protocol_params)

    if @study_protocol.save
      redirect_to study_path(study)
    else
      render :new
    end
  end

  def study_protocol_params
    params.require(:study_protocol)
      .permit(:instructions)
      .merge(study_id: params[:study_id])
  end
end
