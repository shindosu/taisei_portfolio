class PagesController < ApplicationController
  def home
    # respond_to do |format|
    #   format.html {root_path}
    #   format.js #app/views/pages/home.js.erb
    # end
  end

  def contact
  end

  def about
  end

  private
  def contact_params
    params.require(:contact).permit(:full_name, :email, :message)
  end
end
