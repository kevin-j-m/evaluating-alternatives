require "rails_helper"

RSpec.describe "Creating a study participant", type: :system do
  scenario "Enrolling a participant in a study sends a welcome email" do
    study = create :study
    visit new_study_study_participant_path(study)

    fill_in "First name", with: "Kevin"
    fill_in "Email", with: "hi@thegnar.co"

    expect { click_button "Enroll" }
      .to have_enqueued_job
      .on_queue("mailers")
  end
end
