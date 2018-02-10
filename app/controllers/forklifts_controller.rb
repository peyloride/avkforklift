class ForkliftsController < ApplicationController
  before_action :set_product, only: :show

  def index
    @forklifts = Forklift.all
  end

  def show
  end

  private

  def set_product
    @forklift = Forklift.find(params[:id])
  end
end
