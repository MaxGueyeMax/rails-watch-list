class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
end

# A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
# The comment of a bookmark cannot be shorter than 6 characters.
