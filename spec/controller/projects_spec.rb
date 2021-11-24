require "rails_helper"
# this will describe an index for a project and then tell the user which index it is and what its index is
RSpec.describe ProjectsController, type: :controller do
  context "GET #index" do # this will get the index value of the project (think which number it was to be created)
  login_user
    it "returns a success response" do # this returns it was a success
      get :index # get the current index
      # expect(response.success).to eq(true) this would set the response.success to eq(true)
      expect(response).to be_success # prompt that it was a success
    end
  end

  context "GET #show" do # this is to show that the new project
  # this will create the project with the title and description that the user entered 
  login_user
    let!(:project) { Project.create(title: "Test title", description: "Test description") } 
    it "returns a success response" do # if the project is successfully created
      get :show, params: { id: project } # get the project name and show that to the user
      expect(response).to be_success #prompt that it was a success
    end
  end
end
