require 'rails_helper'

# a demo user, has an email and password
RSpec.describe User, :type => :model do
  subject {
      User.new(email: "nomail@fakemail.com",
               password: "LeaveOutAllTheRest")
  }
  
  # to test the users email and password
  it "is valid with an email and password" do
    expect(subject).to be_valid  
  end

  # to say the email is not valid
  it "is not valid without an email address" do
    subject.email = nil
    expect(subject).to_not be_valid  
  end  
  
  # to say the pass word is not valid
  it "is no valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid  
  end  
end