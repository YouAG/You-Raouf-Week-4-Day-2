class Subcomment < ApplicationRecord
  belongs_to :comment
  validates :content, presence: true, length: { minimum: 2 } 
end
