class Study < ApplicationRecord
  has_many :study_participants, dependent: :destroy
  has_many :data_collection_events, dependent: :destroy
  has_one :study_protocol, dependent: :destroy

  validates :name, presence: true
end
