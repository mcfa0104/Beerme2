class Restaurant < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  searchkick
  
  has_many :beer_reviews

  validates :name, :address, :phone, :image, presence: true
  validates :phone, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/,
  	message: "number must be formated (123) 456-7890" }
  validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
  	message: "must start http:// or https://" }
  validates :address, format: { with: /\A\d+-?\d+ [^,]+, [A-Z][a-z]+, [A-Z]{2} [A-Z][0-9][A-Z] [0-9][A-Z][0-9]\z/,
  	message: "format is 1234-100 Test St, Ottawa, ON, K1K 1K1" }
end
