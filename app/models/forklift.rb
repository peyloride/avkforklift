class Forklift < ApplicationRecord
  has_many :events
  has_many :pictures

  enum brand: [:hyster, :hyundai, :om, :still, :crown, :tcm, :komatsu, :bt_toyota, :atlet, :jungheinrich, :clark, ]
  enum forklift_type: [:forklift, :reach_truck, :transpalet]
  enum elevator_type: [:dublex, :triplex]
  enum attachment: [:ss]
  enum status: [:ready, :working, :disassembled, :maintenance, :painting, :sold]

  scope :forklift_type, -> (forklift_type) { where forklift_type: forklift_type }
  scope :elevator_type, -> (elevator_type) { where elevator_type: elevator_type }
  scope :brand, -> (brand) { where brand: brand }
  scope :lifting_capacity, -> (min) { where('lifting_capacity >= ? AND lifting_capacity < ?', (min.to_i*1000), (min.to_i+1)*1000) }
  scope :lifting_height, -> (min) { where('lifting_height >= ? AND lifting_height < ?', min.to_i*100, (min.to_i+2)*100) }
  scope :search, -> (search) { where('plate LIKE ?', "%#{search}%")}

  def self.brand_options
    self.brands.map {|k, v| [k.humanize.titleize, v]}
  end

  def self.forklift_options
    self.forklift_types.map {|k, v| [k.humanize.titleize, v]}
  end

  def self.elevator_options
    self.elevator_types.map {|k, v| [k.humanize.titleize, v]}
  end

  def min_max_options
  end
end
