class StudyParticipant < ApplicationRecord
  belongs_to :study

  validates :email, presence: true
end
