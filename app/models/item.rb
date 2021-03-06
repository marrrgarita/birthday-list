class Item < ApplicationRecord

  validates :title, :description, :price, presence: true

  def round_price
    rounded_price = price.floor(3)
  end

end
