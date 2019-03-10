require "rails_helper"

RSpec.describe StudyProtocol do
  it { is_expected.to belong_to :study }
end
