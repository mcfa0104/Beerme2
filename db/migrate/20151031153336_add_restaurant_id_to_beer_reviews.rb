class AddRestaurantIdToBeerReviews < ActiveRecord::Migration
  def change
    add_column :beer_reviews, :restaurantid, :integer
  end
end
