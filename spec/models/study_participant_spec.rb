require "rails_helper"

RSpec.describe StudyParticipant do
  it { is_expected.to belong_to :study }

  it { is_expected.to validate_presence_of :email }
end
