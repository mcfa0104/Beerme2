class AddUserIdToBeerReviews < ActiveRecord::Migration
  def change
    add_column :beer_reviews, :userid, :Integer
  end
end
