class ListingsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, only: [:edit, :update, :destroy]
  before_action :set_form_vars, only: [:new, :edit]

  def index
    @listings = Listing.all
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.new(listing_params)
    if @listing.save
      redirect_to @listing, notice: "Listing successfully created"
    else
      set_form_vars
      render "new", alert: "Something went wrong"
    end
  end

  def update
    @listing.update(listing_params)
    if @listing.save
      redirect_to @listing, notice: "Listing successfully updated"
    else
      set_form_vars
      render "edit", alert: "Something went wrong"
    end
  end

  def destroy
    @listing.destroy
    redirect_to listings_path, notice: "Succesfully deleted"
  end

  # sets variable to access orders for current user id
  def purchases
      @list_purchases = Order.where(buyer_id: current_user.id)
  end

  private


def listing_params
  params.require(:listing).permit(:title, :price, :category_id, :condition, :description, :picture, feature_ids: [])
end

  def authorize_user
    if @listing.user_id != current_user.id
      redirect_to listings_path, alert: "You dont have permission to do that"
    end
  end


  def set_listing
    @listing = Listing.find(params[:id])
  end

  def set_form_vars
    @categories = Category.all
    @conditions = Listing.conditions.keys
    @features = Feature.all
  end

end
