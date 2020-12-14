class UserMailer < ApplicationMailer
	default from: 'ncsuieeeresumebook@gmail.com'

	def welcome_email
		@user = params[:user]
		mail(to: @user.profile.email, subject: 'Welcome to the IEEE Resume Book')
	end
end
