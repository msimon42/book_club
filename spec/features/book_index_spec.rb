require 'rails_helper'

RSpec.describe 'When I visit the books index page', type: :feature do
  before :each do
    @book_1 = Book.create(
      title: 'The End of Time',
      publication_year: '1966',
      pages: 367
    )

    @book_2 = Book.create(
      title: 'The Beginning of Time',
      publication_year: '1986',
      pages: 457
    )
  end

  it 'can show info for all books' do
    visit '/books'

    expect(page).to have_content(@book_1.title)
    expect(page).to have_content(@book_1.publication_year)
    expect(page).to have_content(@book_1.pages)

    expect(page).to have_content(@book_2.title)
    expect(page).to have_content(@book_2.publication_year)
    expect(page).to have_content(@book_2.pages)
  end
end
