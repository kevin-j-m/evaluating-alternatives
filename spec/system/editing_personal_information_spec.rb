require "rails_helper"

RSpec.describe "Personal Information", type: :system do
  scenario "Editing Personal Information" do
    user = create :user
    sign_in user

    participant = create :study_participant

    visit edit_personal_information_path(participant)

    within(".alert-warning") do
      expect(page).to have_content "Modifying demographic information may risk your eligibility."
    end

    fill_in "First Name", with: "Kevin"

    click_button "Submit"

    within(".alert-success") do
      expect(page).to have_content "Study participant has been updated."
    end

    within(".name") do
      expect(page).to have_content "Kevin"
    end
  end
end
