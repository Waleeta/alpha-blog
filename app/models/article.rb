class Article < ApplicationRecord
	belongs_to	:user

	validates :user_id, :hashed_password, {presence: true}
	validates :email, :username, {presence: true, uniqueness: true}
end
