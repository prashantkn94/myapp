class Term < ApplicationRecord
  belongs_to :user
  before_save { self.text = text.downcase }
  validates :text, presence: true, length: { maximum: 50 }
end
