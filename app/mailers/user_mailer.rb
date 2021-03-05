class UserMailer < ApplicationMailer

  def welcome_email(user_id)
     @user = User.find_by(id: user_id)
     @url  = 'http://example.com/login'
     attachments.inline['hondacity.jpeg'] = File.read('/home/jaydip/Downloads/hondacity.jpeg')
     mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    # mail(to: 'valuashish97@gmail.com', from:"jaydipvalu88@gmail.com", subject: 'Welcome to My Awesome Site',message:"hi!!!")


    # @user = params[:user]
    # @url  = 'http://example.com/login'
    # mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    #
  end
end
