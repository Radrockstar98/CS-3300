require "rails_helper"
# this will describe an index for a project and then tell the user which index it is and what its index is
RSpec.describe ProjectsController, type: :controller do
  context "GET #index" do # this will get the index value of the project (think which number it was to be created)
    it "returns a success response" do # this returns it was a success
      get :index # get the current index
      # expect(response.success).to eq(true) this would set the response.success to eq(true)
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

require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
    login_user

    let(:valid_attributes) {
        { :title => "Test title!", :description => "This is a test description", :status => "draft" }
    }

    let(:valid_session) { {} }

    describe "GET #index" do
        it "returns a success response" do
            Article.create! valid_attributes
            get :index, params: {}, session: valid_session

            # Make sure to swap this as well
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            # expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
        end
    end
end
