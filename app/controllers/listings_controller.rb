class ListingsController < ApplicationController
  #sets before actions
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, only: [:edit, :update, :destroy]
  before_action :set_form_vars, only: [:new, :edit]

  def index
    #Gets all listings and preloads category to reduce database callbacks
    @listings = Listing.includes(:category)
  end

  def show
  end

  def new
    #Creates a new listing
    @listing = Listing.new
  end

  def create
    #Saves listing to database or returns error if not all required fields are met
    @listing = current_user.listings.new(listing_params)
    if @listing.save
      redirect_to @listing, notice: "Listing successfully created"
    else
      set_form_vars
      render "new", alert: "Something went wrong"
    end
  end

  def update
    # Updates and saves listing to database or returns error if not all requirements are met
    @listing.update(listing_params)
    if @listing.save
      redirect_to @listing, notice: "Listing successfully updated"
    else
      set_form_vars
      render "edit", alert: "Something went wrong"
    end
  end

  def destroy
    # Deletes listing from database and pops up a successful notice message
    @listing.destroy
    redirect_to listings_path, notice: "Succesfully deleted"
  end

  def purchases
    # Gets orders where the buyer id is equal to current user logged in / eager loads listing and orders by listing title
      @list_purchases = Order.where(buyer_id: current_user.id).order("listings.title").eager_load(:listing)
  end

  private


def listing_params
  #Sets listing params
  params.require(:listing).permit(:title, :price, :category_id, :condition, :description, :picture, feature_ids: [])
end

  def authorize_user
    # Authorises user for specific actions
    if @listing.user_id != current_user.id
      redirect_to listings_path, alert: "You dont have permission to do that"
    end
  end


  def set_listing
    #sets the current listing listing id into instance variable
    @listing = Listing.find(params[:id])
  end

  def set_form_vars
    #sets variables for when creating a new listing
    @categories = Category.all
    @conditions = Listing.conditions.keys
    @features = Feature.all
  end

end
