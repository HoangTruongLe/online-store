class Product < ActiveRecord::Base
    belongs_to :type
    belongs_to :vendor
    has_many :product_photos, :dependent => :destroy    
    
    has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
