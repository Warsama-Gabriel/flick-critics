class Review < ApplicationRecord
  validates :body, :email, presence: true
end
