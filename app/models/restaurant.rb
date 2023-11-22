class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :address, presence: true
end
