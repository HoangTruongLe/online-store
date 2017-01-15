class Vendor < ActiveRecord::Base
    has_many :product_vendors
    has_many :products, through: :product_vendors
end
