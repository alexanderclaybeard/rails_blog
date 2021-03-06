class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  # ensure that artiicle titles are > 5 characters in length
  validates :title, presence: true, length: { minimum: 5 }
end
