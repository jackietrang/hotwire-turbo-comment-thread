class Quote < ApplicationRecord
  has_many :replies, dependent: :destroy

  validates :name, presence: true

  scope :ordered, -> { order(id: :desc) }
end
