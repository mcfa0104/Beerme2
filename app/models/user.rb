
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable, :lockable, :timeoutable 

  has_many :beer_reviews

  validates :first_name, :last_name, presence: true 
end
