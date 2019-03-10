FactoryBot.define do
  factory :user do
    email { "user@example.com" }
    password { "s3cret" }

    trait :technician do
      role { "technician" }
    end

    trait :co_investigator do
      role { "co_investigator" }
    end

    trait :principal_investigator do
      role { "principal_investigator" }
    end
  end
end
