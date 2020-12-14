class User < ApplicationRecord
	has_secure_password
	has_one :resume

	def uploaded_resume
		!resume.nil?
	end
end
