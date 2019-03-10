require "rails_helper"

RSpec.describe "Viewing study", type: :system do
  scenario "Viewing an existing study" do
    user = create :user
    sign_in user

    study = create :study, name: "Study to View"

    visit study_path(study)

    within(".heading") do
      expect(page).to have_content "Study to View"
    end
  end
end
