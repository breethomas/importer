class UploadsController < ApplicationController

  def index

  end

  def create
    uploaded_io = params[:spreadsheet]
    save_path = "/Users/A659986/Programs/imported_files/" + uploaded_io.original_filename
    File.open(save_path, "wb") do |file|
      file.write(uploaded_io.read)
    end
    flash[:notice] = "Success!"
    redirect_to action: :index
  end
end
