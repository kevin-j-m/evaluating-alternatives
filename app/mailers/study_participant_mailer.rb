class StudyParticipantMailer < ApplicationMailer
  def welcome_email
    @study_participant = params[:study_participant]

    mail(to: @study_participant.email, subject: "Welcome to the study!")
  end
end
