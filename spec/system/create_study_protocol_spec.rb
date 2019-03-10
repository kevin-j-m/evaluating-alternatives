require "rails_helper"

RSpec.describe "Creating a study protocol", type: :system do
  scenario "Successfully adding a protocol" do
    user = create :user
    sign_in user

    study = create :study
    visit new_study_study_protocol_path(study)

    fill_in "Instructions", with: "Ask how they are feeling."

    click_button "Submit"

    within(".protocol") do
      expect(page).to have_content "Ask how they are feeling."
    end
  end
end
