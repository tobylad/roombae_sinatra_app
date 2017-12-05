# class User < ApplicationRecord

#   validate :validate_password

#   def password
#     @password ||= BCrypt::Password.new(hashed_password)
#   end

#   def password=(raw_password)
#     @raw_password = raw_password
#     @password = BCrypt::Password.create(raw_password)
#     self.hashed_password = @password
#   end

#   def authenticate(raw_password)
#     self.password == raw_password
#   end

#   def validate_password
#     if @raw_password.empty?
#       errors.add(:password, "is required.")
#     elsif @raw_password.length < 6
#       errors.add(:password, "must be 6 or more characters.")
#     end
#   end


# end
