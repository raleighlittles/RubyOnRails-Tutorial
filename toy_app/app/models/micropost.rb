class Micropost < ApplicationRecord
  # make Rails infer associations between posts and users with those posts
  belongs_to :user
  # Constrain microposts to have a maximum of 140 lines
  validates :content, :length: {maximum: 140}, presence: true
end
