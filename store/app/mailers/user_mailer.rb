class UserMailer < ApplicationMailer
    default from: 'website@example.com'

  def welcome_email
    @user = params[:user]
    @url = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Hello, W elcome to our site')
  end
end
