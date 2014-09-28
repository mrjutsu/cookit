class UserMailer < ActionMailer::Base
  default from: "no-reply@cookit.co"

  #Esto genera el metodo para enviar mail cuando se registra un
  #usuario
  def welcome(user)
  	current_user
  	mail(to: current_user.email, subject:"Bienvenido a Cook It!")
  end
  
end
