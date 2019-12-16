require 'rails_helper'

describe Author, type: :model do
  describe 'methods' do
    before :each do
      @author_2 = Author.create(
        name: 'Harry Potter'
      )

      @book_1 = Book.create(
        title: 'The End of Time',
        publication_year: '1966',
        pages: 367
      )

      @author_2.books << @book_1
    end

    it 'can calculate avg pages' do
      expect(@author_2.avg_pages).to eq(367.0)
    end
  end
end
