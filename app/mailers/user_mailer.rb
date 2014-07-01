class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user
    @url  = 'https://qawm.ly'
    mail(to: @user.email, subject: 'Hugs')
  end

end
