require "rails_helper"

RSpec.describe PersonalInformation do
  describe "#edit_warning_message" do
    it "provides feedback on the consequences for changing personal information" do
      personal_information = PersonalInformation.new

      expect(personal_information.edit_warning_message)
        .to eq "Modifying demographic information may risk your eligibility."
    end
  end
end
