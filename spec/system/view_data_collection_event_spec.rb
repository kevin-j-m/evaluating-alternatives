require "rails_helper"

RSpec.describe "Viewing data collection event", type: :system do
  scenario "Viewing an existing data collection event" do
    user = create :user
    sign_in user

    collected_at = Time.zone.local(2019, 4, 30, 14, 0)
    collection_event = create :data_collection_event, created_at: collected_at

    visit data_collection_event_path(collection_event)

    within ".summary-information .collected-date" do
      expect(page).to have_content ("April 30, 2019")
    end
  end
end
