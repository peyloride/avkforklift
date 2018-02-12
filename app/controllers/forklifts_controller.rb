class ForkliftsController < ApplicationController
  before_action :set_product, only: :show

  def index
    @forklifts = Forklift.order(:created_at).page(params[:page]).per(9)
  end

  def show
    @related_forklifts = Forklift.where(brand: @forklift.brand).limit(10)
  end

  private

  def set_product
    @forklift = Forklift.find(params[:id])
  end
end
