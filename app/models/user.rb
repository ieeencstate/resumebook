class User < ApplicationRecord
	has_secure_password
	has_one :resume
	has_one :profile

	def uploaded_resume
		!resume.nil?
	end
	def created_profile
		!profile.nil?
	end
end
