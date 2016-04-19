class SearchController < ApplicationController
  def results
    term = params[:term]
    @sell_listings = SellListing.joins(:book).where("books.title LIKE ? OR books.isbn = ?", "%#{term}%","#{term}")
    #@sell_listings = SellListing.all
  end
end
