require "rails_helper"

RSpec.describe "Personal Information", type: :system do
  scenario "Warning the user of consequences for changing personal information" do
    user = create :user
    sign_in user

    participant = create :study_participant

    visit edit_personal_information_path(participant)

    within(".alert-warning") do
      expect(page).to have_content "Modifying demographic information may risk your eligibility."
    end
  end
end
