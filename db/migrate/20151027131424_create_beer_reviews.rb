class CreateBeerReviews < ActiveRecord::Migration
  def change
    create_table :beer_reviews do |t|
      t.integer :rating
      t.text :comments

      t.timestamps null: false
    end
  end
end
