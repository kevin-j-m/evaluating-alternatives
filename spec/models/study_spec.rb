require "rails_helper"

RSpec.describe Study do
  it { is_expected.to have_many :study_participants }
  it { is_expected.to have_many :data_collection_events }
  it { is_expected.to have_one :study_protocol }

  it { is_expected.to validate_presence_of :name }
end
