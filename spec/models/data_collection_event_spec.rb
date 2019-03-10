require "rails_helper"

RSpec.describe DataCollectionEvent do
  it { is_expected.to belong_to :study }
end
