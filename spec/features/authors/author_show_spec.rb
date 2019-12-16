require 'rails_helper'

RSpec.describe 'author show page', type: :feature do
  before :each do

    @author_1 = Author.create(
      name: 'Albus Dumbledore'
    )

    @author_2 = Author.create(
      name: 'Harry Potter'
    )

    @book_1 = Book.create(
      title: 'The End of Time',
      publication_year: '1966',
      pages: 367
    )

    @author_1.books << @book_1
  end

  it 'can show author information' do
    visit "/authors/#{@author_1.id}"

    expect(page).to have_content(@author_1.name)
    expect(page).to have_content(@book_1.title)
  end
end
