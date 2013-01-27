module Bidder
  include Dicer::Behavior

  def bid?(item)
    item.bids.by(self).exists?
  end

  def bid(item, price)
    if bid?(item)
      item.bids.by(self).first.update_attributes!(price: price)
    else
      item.bids.create!(user: self, price: price)
    end
  end
end
