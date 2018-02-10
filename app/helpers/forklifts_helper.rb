module ForkliftsHelper
  def forklift_name(forklift)
    "#{forklift.brand.titleize} #{forklift.try(:model)}"
  end

  def forklift_price(forklift)
    if forklift.price.nil?
      "Satışta değil"
    else
      number_to_currency(forklift.price, locale: 'tr')
    end
  end

  def forklift_lifting_capacity(forklift)
    number_to_human(forklift.lifting_capacity, units: {unit: "kg", thousand: "Ton"})
  end

  def forklift_lifting_height(forklift)
    number_to_human(forklift.lifting_height, units: {unit: "cm", hundred: "m"})
  end
end
