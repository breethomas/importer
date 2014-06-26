require 'rails_helper'

RSpec.describe UploadsController, :type => :controller do
  before do
    @file = fixture_file_upload("room-parents.xls")
  end

  describe "#create" do
    it "should write the file to disc" do
      post :create, spreadsheet: @file
    end
  end
end
