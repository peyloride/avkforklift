class Forklift < ApplicationRecord
  has_many :events
  has_many :pictures

  enum brand: [:hyster, :hyundai, :om, :still, :crown, :tcm, :komatsu, :bt_toyota, :atlet, :jungheinrich, :clark, ]
  enum forklift_type: [:forklift, :reach_truck]
  enum elevator_type: [:dublex, :triplex]
  enum attachment: [:ss]
  enum status: [:ready, :working, :disassembled, :maintenance, :painting, :sold]
end
