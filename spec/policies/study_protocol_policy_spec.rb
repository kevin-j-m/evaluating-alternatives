require "pundit/rspec"
require "rails_helper"

RSpec.describe StudyProtocolPolicy do
  subject(:policy) { described_class }

  permissions :create?, :new? do
    it "grants access for principal investigators" do
      user = build :user, :principal_investigator
      protocol = build :study_protocol

      expect(policy).to permit(user, protocol)
    end

    it "denies access for co-investigators" do
      user = build :user, :co_investigator
      protocol = build :study_protocol

      expect(policy).not_to permit(user, protocol)
    end

    it "denies access for technicians" do
      user = build :user, :technician
      protocol = build :study_protocol

      expect(policy).not_to permit(user, protocol)
    end

    it "denies access for users with no role" do
      user = build :user, role: nil
      protocol = build :study_protocol

      expect(policy).not_to permit(user, protocol)
    end
  end
end
