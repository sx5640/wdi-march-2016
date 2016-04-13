class Article < ActiveRecord::Base
  has_many :comments

  validates :title, :body, presence: true
  validates :body, length: { minimum: 100 }
end
