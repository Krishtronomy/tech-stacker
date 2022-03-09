class ListingsController < ApplicationController
  # before_action :set_listing, only: %i[show edit update destroy]

  def index
    @listings = Listing.all
  end

def show
  @listing = Listing.find(params[:id])
end

end
