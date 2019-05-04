class Comment < ApplicationRecord
  belongs_to :article
  validates :commenter, presence: true
  validates :body, presence: true
  validates :email, allow_blank: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
end