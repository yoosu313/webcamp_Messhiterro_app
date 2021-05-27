class Postimage < ApplicationRecord
  belongs_to :user
  attachment :image
end
