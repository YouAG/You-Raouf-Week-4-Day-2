class Pin < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy

  VALID_URL_REGEX = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
  validates :pin_url, presence: true,
                      format: { with: VALID_URL_REGEX },
                      uniqueness: { case_sensitive: false }
end
