class Story < ApplicationRecord
  belongs_to :prompt
  validates :body, presence: true, length: { minimum: 150 }
end
