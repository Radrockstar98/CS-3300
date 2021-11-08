require "rails_helper"

# this will see if there was a name and describtion for a new project before it can be created 
RSpec.describe ProjectsController, type: :controller do
  context "GET #index" do # this will get the index value of the project (think which number it is)
    it "returns a success response" do # if there was a correct index
      get :index # get the current index
      # expect(response.success).to eq(true)
      expect(response).to be_success # prompt that it was a success
    end
  end

  context "GET #show" do # this is to show that the new project
  # this will create the project with the title and description that the user entered 
    let!(:project) { Project.create(title: "Test title", description: "Test description") } 
    it "returns a success response" do # if the project is successfully created
      get :show, params: { id: project } # get the project name and show that to the user
      expect(response).to be_success #prompt that it was a success
    end
  end
end