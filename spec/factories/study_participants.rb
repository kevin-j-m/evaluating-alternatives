FactoryBot.define do
  factory :study_participant do
    study

    email { "participant@example.com" }
  end
end
