class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :picture
  has_many :listings_features, dependent: :destroy
  has_many :features, through: :listings_features

  # conditions new, near new, used, good
  enum condition: { brand_new: 1, near_new: 2, used: 3, good: 4 }

  #validations
  validates :title, :description, :price, :condition, presence: true
  validates :title, length: {minimum: 4}

  # sanitise data with lifecycle hooks
  before_save :remove_whitespace
  before_save :remove_weapon
  before_validation :convert_price_to_cents, if: :price_changed?

  private
  def remove_whitespace
    self.title = self.title.strip
    self.description = self.description.strip
  end

  def remove_weapon
    self.title = self.title.gsub(/weapon/i, 'toy')
    self.description = self.description.gsub(/weapon/i, 'toy')
  end

  def convert_price_to_cents
    self.price = (self.attributes_before_type_cast["price"].to_f * 100)
  end
end
