class Book < ApplicationRecord
  scope :costly, -> { where("price > ?",3000) }
  belongs_to :publisher
  has_many :book_authors
  has_many :authors, through: :book_authors
end
