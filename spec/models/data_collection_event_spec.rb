require "rails_helper"

RSpec.describe DataCollectionEvent do
  it { is_expected.to belong_to :study }

  it { is_expected.to validate_presence_of :collected_at }
end
