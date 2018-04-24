class Comment < ApplicationRecord
  has_many :subcomments, dependent: :destroy
  belongs_to :link
  validates :content, presence: true, length: { minimum: 2 } 
end
