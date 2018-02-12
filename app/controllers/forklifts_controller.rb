class ForkliftsController < ApplicationController
  before_action :set_product, only: :show

  def index
    @forklifts = Forklift.order(:index_line_up, :created_at)
    filtering_params(params).each do |key, value|
      @forklifts = @forklifts.public_send(key, value) if value.present?
    end
    @forklifts = @forklifts.page(params[:page]).per(9)
  end

  def show
    @related_forklifts = Forklift.brand(@forklift.brand).limit(10)
  end

  private

  def set_product
    @forklift = Forklift.find(params[:id])
  end

  def filtering_params(params)
    params.slice(:forklift_type, :elevator_type, :brand, :lifting_capacity, :lifting_height)
  end
end
