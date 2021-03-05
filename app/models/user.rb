class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders

  #validates :name, presence: {message:"please enter"}
  #validates :name,:city,:state, presence:{ message: "please enter"}
  # => validates :pincode, numericality: true
  after_commit :send_welcome_email, on: :create

  def send_welcome_email
    #TestJob.welcome_email(self).deliver_later
     TestJob.perform_later(id)
  end
end
