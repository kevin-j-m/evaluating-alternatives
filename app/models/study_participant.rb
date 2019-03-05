class StudyParticipant < ApplicationRecord
  belongs_to :study

  validates :email, presence: true

  after_commit :deliver_welcome_mailer, on: :create

  private

  def deliver_welcome_mailer
    StudyParticipantMailer.with(study_participant: self).welcome_email.deliver_later
  end
end
