class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, dependent: :destroy, through: :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
end

# A movie must have a unique title and an overview.
