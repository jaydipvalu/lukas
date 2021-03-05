class Model < ApplicationRecord
  belongs_to :brand
  has_many :versions
  has_many :cars

  validates :name, presence: {message:"please enter"}

end
