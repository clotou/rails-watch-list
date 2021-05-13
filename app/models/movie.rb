class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true, uniqueness: true
  default_scope {order('rating DESC')}
end
