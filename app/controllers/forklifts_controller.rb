class ForkliftsController < ApplicationController
  before_action :set_product, only: [:show, :order]

  def index
    @forklifts = Forklift.order(:index_line_up, :created_at)
    filtering_params(params).each do |key, value|
      @forklifts = @forklifts.public_send(key, value) if value.present?
    end
    @forklifts = @forklifts.page(params[:page]).per(12)
  end

  def show
    @related_forklifts = Forklift.brand(@forklift.brand).limit(10)
  end

  def order
  end

  private

  def set_product
    @forklift = Forklift.find(params[:id])
  end

  def filtering_params(params)
    params.slice(:search, :forklift_type, :elevator_type, :brand, :lifting_capacity, :lifting_height)
  end
end
