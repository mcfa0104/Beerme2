
class BeerReview < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant

	validates :rating, :comments, presence: true
	validates :rating, numericality: {
		only_integer: true,
		greater_then_or_equal_to: 1,
		less_than_or_equal_to: 5,
		message: "Can only be a whole number between 1 and 5"
	}
end
