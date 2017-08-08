class Article < ApplicationRecord
	belongs_to	:user

	validates :user_id, :description, {presence: true}
	validates :title, presence: true, length: { minimum: 5, maximum: 30 }





end
