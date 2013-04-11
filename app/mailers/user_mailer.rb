class UserMailer < ActionMailer::Base
  default from: "noreply@cookquery.com"
  
  def welcome_mail(user)  
    @user = user
    mail(:to => user.email, :subject => "Welcome to Cookquery")  
  end
end
