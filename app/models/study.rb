class Study < ApplicationRecord
  has_many :study_participants, dependent: :destroy

  validates :name, presence: true
end
