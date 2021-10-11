class ContactFilesController < ApplicationController
  def new
    @contact_file = ContactFile.new
  end

  def create
    @contact_file = ContactFile.new(contact_file_params)

    if @contact_file.save
      redirect_to root_path
    else
      render :new, alert: @contact_file.errors.full_messages
    end
  end

  def contact_file_params
    params.require(:contact_file).permit(:file)
  end
end
