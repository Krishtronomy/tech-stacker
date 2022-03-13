class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :picture
  has_many :listings_features, dependent: :destroy
  has_many :features, through: :listings_features

  # conditions new, near new, used, good
  enum condition: { brand_new: 1, near_new: 2, used: 3, good: 4 }
end
