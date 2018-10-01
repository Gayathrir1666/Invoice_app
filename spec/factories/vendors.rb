FactoryGirl.define do

  factory :vendor do
    email Faker::Internet.email
    password Devise.friendly_token.first(8)

    factory :vendor_with_stripe_acct do
      stripe_uid "123123123"
    end
  end
end
