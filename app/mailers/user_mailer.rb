class UserMailer < ActionMailer::Base
    default from: "rad.news.projects2020@gmail.com"
    def forgot_password(user)
        @user = user
        @greeting = "Hi"
        
        mail to: user.email, :subject => 'Reset password instructions'
      end
end