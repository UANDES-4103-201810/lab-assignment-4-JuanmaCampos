class User < ApplicationRecord
	has_many :user_tickets
	has_many :tickets, :through => :user_tickets
	VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true
	validates :email, format: {with:VALID_EMAIL}
	validates :password, presence: true
	validates :password, length: { in: 8..12}	
	validates :phone_change, length: { in: 9..12 }
end
