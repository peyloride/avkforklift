class LandingPagesController < ApplicationController
  before_action :find_landing_page, only: :show

  def show
  end

  private
  def find_landing_page
    @landing_page = LandingPage.find(params[:id])
  end
end
