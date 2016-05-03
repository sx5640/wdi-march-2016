class Project < ActiveRecord::Base
  has_many :rewards

  accepts_nested_attributes_for :rewards, reject_if: :all_blank
end
