class Product < ApplicationRecord
  belongs_to :product_category
  has_many :purchases
  has_many :sales
end
