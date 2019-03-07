class PersonalInformation
  delegate :email, to: :study_participant
  delegate :first_name, to: :study_participant
  delegate :last_name, to: :study_participant

  def initialize(study_participant_id)
    @study_participant_id = study_participant_id
  end

  def study_participant
    @study_participant ||= StudyParticipant.find(@study_participant_id)
  end
end
