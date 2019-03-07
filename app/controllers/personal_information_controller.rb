class PersonalInformationController < ApplicationController
  def edit
    @personal_information = PersonalInformation.new(params[:id])
  end
end
