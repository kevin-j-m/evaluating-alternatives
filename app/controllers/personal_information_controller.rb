class PersonalInformationController < ApplicationController
  def edit
    @personal_information = PersonalInformation.new(params[:id])
    flash[:warning] = @personal_information.edit_warning_message
  end
end
