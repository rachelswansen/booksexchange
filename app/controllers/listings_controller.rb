class ListingsController < ApplicationController
    
    def index
        @listings = Listing.all
    end
    
    def create
        @listing = Listing.create!(listing_params)
        redirect_to '/listings'
    end
    
    def show
        @listing = Listing..find(params[:id])
    end

    def new
       # @listing = Listing.new
    end
    
    
    def listing_params 
        params.require(:listing).permit(:thumbnail, :title, :isbn, :price, :description, :is_hardcover) 
    end
    
end
