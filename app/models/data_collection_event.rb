class DataCollectionEvent < ApplicationRecord
  belongs_to :study

  validates :collected_at, presence: true

  after_initialize :set_defaults

  private

  def set_defaults
    self.collected_at ||= Time.zone.now
  end
end
