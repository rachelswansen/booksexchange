class SearchController < ApplicationController
  def index
    @sell_listings = SellListing.all
  end
end
