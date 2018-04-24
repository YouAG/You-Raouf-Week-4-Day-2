class User < ApplicationRecord
	has_many :pins, dependent: :destroy

	validates :user_name,  presence: true, length: { maximum: 20 }
end
