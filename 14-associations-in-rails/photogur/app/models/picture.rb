class Picture < ActiveRecord::Base
  has_many :comments
  # @picture.comments
  # @picture.comments <<
  # @picture.comments.order
  # @picture.comments.where
  # @picture.comments.count
  # @picture.comments.build({...})
  # @picture.comments.create
  # etc
end
