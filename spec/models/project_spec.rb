require "rails_helper"
# to enforce the need to have a project title
RSpec.describe Project, type: :model do
  context "validations tests" do # to perform the validation test
    it "ensures the title is present" do
      project = Project.new(description: "Content of the description") # the new description 
      expect(project.valid?).to eq(false) # expect to to be false and true if there is a description
    end
    
    it "should be able to save project" do # it should be able to save on the event there is a description 
      project = Project.new(title: "Title", description: "Some description content goes here") # the description goes here
      expect(project.save).to eq(true) # save the project 
    end
  end

  context "scopes tests" do
  end
end

require "rails_helper"
#  to descripe a project
RSpec.describe Project, type: :model do
  context "scopes tests" do
    let(:params) { { title: "Title", description: "some description" } } # the params are title and description 
    before(:each) do
      Project.create(params) # create a project
      Project.create(params) # create another project
      Project.create(params) # create another project
    end

    it "should return all projects" do # to return with all curent projects
      expect(Project.count).to eq(3) # count the projects and see if it equals 3, here it does
    end

  end
end