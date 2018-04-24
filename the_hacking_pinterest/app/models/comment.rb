class Comment < ApplicationRecord
  belongs_to :pin

  validates :content,  presence: true, length: { maximum: 140 }
end
