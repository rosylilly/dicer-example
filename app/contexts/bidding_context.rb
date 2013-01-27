class BiddingContext < ApplicationContext
  describe User do
    role :bidder do
      it_behaves_like Bidder
    end
  end
end
