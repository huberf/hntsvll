require 'bcrypt'

class User < Sequel::Model(:users)
  attr_accessor :password, :password_confirmation

  def password=(password)
    @password = password

    return if password.nil? || password.empty?
    self.crypted_password = BCrypt::Password.create(password)
  end

  def before_validation
    @email = @email.to_s.downcase
    super
  end

  plugin :validation_helpers
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\.)+[A-Z]{2,4}$/i unless defined? EMAIL_REGEX

  def validate
    super

    # require a value for email address
    validates_presence  :email

    # require a valid email address
    # validates_format    EMAIL_REGEX, :email if email && !email.empty?

    # make sure the email address is unique
    validates_unique    :email

    # require a value for password
    # validates_presence  :password

    # make sure the password matches the confirmation
    errors.add(:password, "and confirmation must match") if password && password != password_confirmation
  end

  def self.auth(session)
    user = first(email: session[:email])

    if user && user.auth?(session.password)
      return user
    else
      return nil
    end
  end

  def auth?(password)
    BCrypt::Password.new(crypted_password) == password
  end
  def self.authenticate(session)
    puts session
    u = User.where(:email => session.login).first#<-- "session.login.downcase" ensures email part of login input is lowercase when submitted

    if u && u.authenticated?(session.password)
      return u
    else
      return false
    end
  end
    def authenticated?(auth_password)
    return password == auth_password
  end
end