FactoryBot.define do
    factory :user do
      id {1}
      email {"exampletest@user.com"}
      password {"lolols"}
      # Add additional fields as required via your User model
    end
  end