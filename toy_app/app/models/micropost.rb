class Micropost < ApplicationRecord
  # Constrain microposts to have a maximum of 140 lines
  validates :content, :length: {maximum: 140}
end
