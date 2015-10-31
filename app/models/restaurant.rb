class Restaurant < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  has_many :beer_reviews
end
