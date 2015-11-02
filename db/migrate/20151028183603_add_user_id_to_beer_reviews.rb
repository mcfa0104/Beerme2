class AddUserIdToBeerReviews < ActiveRecord::Migration
  def change
    add_column :beer_reviews, :user_id, :Integer
  end
end
