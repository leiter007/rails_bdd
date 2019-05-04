class Comment < ApplicationRecord
  belongs_to :article
  validates_presence_of :commenter, presence: true
  validates :body, presence: true
  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
