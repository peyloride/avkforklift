module ForkliftsHelper
  def forklift_name(forklift)
    "#{forklift.brand.titleize} #{forklift.try(:model)}"
  end

  def forklift_price(forklift)
    if forklift.price.nil?
      "Satışta değil"
    else
      "₺#{forklift.price}"
    end
  end
end
