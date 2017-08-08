class User < ApplicationRecord
	include BCrypt

	has_many	:articles

	validates :hashed_password, {presence: true}
	validates :email, :username, {presence: true, uniqueness: true}


	def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @raw_password = new_password
    @password = Password.create(@raw_password)
    self.hashed_password = @password
  end

  def password_errors
    if @raw_password.length < 5 
      errors.add(:password, "Password must be at least 5 characters long")
    end
   end


  def authenticate(password)
    self.password == password
  end

end
