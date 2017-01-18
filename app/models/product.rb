class Product < ActiveRecord::Base
    has_many :product_types
    has_many :types, through: :product_types
    has_many :product_vendors
    has_many :vendors, through: :product_vendors
end
