class Author < ApplicationRecord
  has_many :book_authors
  has_many :books, through: :book_authors

  def avg_pages
    books.average(:pages)
  end
end
