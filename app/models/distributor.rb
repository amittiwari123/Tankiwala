class Distributor < ActiveRecord::Base
	validates :name, :address, :contact, :city, :state, :email, presence: true
	belongs_to :gas_company
	belongs_to :location
	has_many :users
end
