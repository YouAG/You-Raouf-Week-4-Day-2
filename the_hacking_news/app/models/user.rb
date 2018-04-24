class User < ApplicationRecord
	has_many :links, dependent: :destroy
	validates :name, presence: true, length: { minimum: 2 } 
end
