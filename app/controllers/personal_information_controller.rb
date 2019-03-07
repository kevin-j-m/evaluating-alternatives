class PersonalInformationController < ApplicationController
  def edit
    @personal_information = PersonalInformation.new(params[:id])
    flash[:warning] = I18n.t("personal_information.edit.warning")
  end
end
