class Brand < ApplicationRecord
  has_many :cars
  has_many :models

  validates :name, :website, presence: { message: "please enter" }
end
