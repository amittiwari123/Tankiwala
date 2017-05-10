class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :first_name, :last_name, :aadhar_uid, :contact, presence: true
  belongs_to :location
  belongs_to :distributor
  belongs_to :gas_company

  def full_name
    "#{self.first_name} #{self.middle_name} #{self.last_name}"
  end

end
