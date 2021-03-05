class Car < ApplicationRecord
  belongs_to :brand
  belongs_to :model
  belongs_to :version
  belongs_to :car_type
  has_many :orders
  has_one_attached :image

  scope :high, -> { order 'total_price desc' }
  scope :low, -> { order 'total_price  asc' }
  scope :a_to_z, -> { order 'name  asc' }
  scope :z_to_a, -> { order 'name desc ' }


  validates :name, presence:{message: "please enter"}
end
