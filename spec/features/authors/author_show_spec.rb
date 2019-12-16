require 'rails_helper'

RSpec.describe 'author show page', type: :feature do
  before :each do
    Author.destroy_all

    @author_1 = Author.create(
      name: 'Albus Dumbledore'
    )

    @author_2 = Author.create(
      name: 'Harry Potter'
    )
  end

  it 'can show author information' do
    visit "/authors/#{@author_1.id}"

    expect(page).to have_content(@author_1.name)
  end
end
