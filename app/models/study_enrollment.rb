class StudyEnrollment
  attr_reader :study_participant

  def initialize(study_participant_params)
    @study_participant_params = study_participant_params
  end

  def create
    @study_participant = StudyParticipant.new(study_participant_params)

    if @study_participant.save
      send_welcome_email
    else
      false
    end
  end

  private

  attr_reader :study_participant_params

  def send_welcome_email
    StudyParticipantMailer
      .with(study_participant: study_participant)
      .welcome_email
      .deliver_later
  end
end
