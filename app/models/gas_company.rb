class GasCompany < ActiveRecord::Base
	validates :name, presence: true
	has_many :distributors
	mount_uploader :company_logo, AvatarUploader
end
