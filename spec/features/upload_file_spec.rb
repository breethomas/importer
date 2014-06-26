describe "uploading a file" do
  before do 
    visit '/uploads'
  end

  it "shows upload file option" do
    expect(page).to have_css('input.upload')
  end

  it "shows submit file option" do
    expect(page).to have_css('input.submit')
  end

  it "uploads a file successfully" do
    file_path = Rails.root + "spec/fixtures/room-parents.xls"
    attach_file('spreadsheet', file_path)
    click_button "Upload File"
    expect(page).to have_content("Success!")

  end

end
