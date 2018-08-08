class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["Chinese", "Italian", "Japanese", "French", "Belgian"] }
  has_many :reviews, dependent: :destroy
end
