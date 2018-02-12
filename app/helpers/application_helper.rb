module ApplicationHelper
  def brands
    Forklift.brands.keys.map(&:titleize)
  end

  def forklift_types
    Forklift.forklift_types.keys.map(&:titleize)
  end

  def elevator_types
    Forklift.elevator_types.keys.map(&:titleize)
  end
end
