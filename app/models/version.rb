class Version < ApplicationRecord
  belongs_to :model

  validates :name, presence:{message: "please enter"}
end
