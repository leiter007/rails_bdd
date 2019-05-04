class Comment < ApplicationRecord
  belongs_to :article
  validates :commenter, presence: true
  validates :body, presence: true
  validates :email, allow_blank: true, format: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end