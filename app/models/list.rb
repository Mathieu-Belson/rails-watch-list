class List < ApplicationRecord
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy # @list.bookmarks
  has_many :movies, through: :bookmarks #@list.movies
  validates :name, presence: true, uniqueness: true
end
