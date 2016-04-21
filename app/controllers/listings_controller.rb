class ListingsController < ApplicationController
    
    def index
        @listings = Listing.all
    end
    
    def create
        #@listing = Listing.create!(listing_params)
        
        @sell_listing = SellListing.new
        @sell_listing.user = current_user
        @sell_listing.book = Book.where("isbn = ?", listing_params[:isbn]).first
        @sell_listing.price = listing_params[:price]
        @sell_listing.is_hardcover = listing_params[:is_hardcover]
        @sell_listing.notes = listing_params[:description]
        
        @sell_listing.save

        redirect_to listing_path(@sell_listing)
    end
    
    def show
        @listing = SellListing.find(params[:id])
    end

    def new
       # @listing = Listing.new
    end
    
    
    def listing_params 
        params.require(:listing).permit(:thumbnail, :title, :isbn, :price, :description, :is_hardcover) 
    end
    
end
