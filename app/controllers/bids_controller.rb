class BidsController < ApplicationController
  before_filter :require_login!

  context_for :bid, BiddingContext
  def bid
    item = Item.find(params[:id].to_i)
    bidder = current_user.as(:bidder)

    bidder.bid(item, params[:price])

    redirect_to item_path(item)
  end
end
