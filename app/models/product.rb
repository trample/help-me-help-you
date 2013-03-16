class Product < ActiveRecord::Base
  attr_accessible :category, :description, :image, :name, :price
end
