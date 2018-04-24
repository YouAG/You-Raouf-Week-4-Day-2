class Link < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  VALID_URL_REGEX = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
  validates :url, presence: true, format: { with: VALID_URL_REGEX }
end
