class Category < ActiveRecord::Base
  has_many :articles
  
  validates_uniqueness_of :name
end
