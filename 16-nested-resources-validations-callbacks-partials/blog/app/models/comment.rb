class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

  validates :body, :user, presence: true
end
