class PagesController < ApplicationController
  def home
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
