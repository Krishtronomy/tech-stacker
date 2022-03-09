class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category

  # conditions new, near new, used, good
  enum condition: { brand_new: 1, near_new: 2, used: 3, good: 4 }
end
