feature 'Adding tags' do

  scenario 'I can add a single tag to a new link' do
    visit '/links/new'
    fill_in 'url', with: 'http://www.makersacademy.com/'
    fill_in 'title', with: 'Makers Academy'

    fill_in 'tags', with: 'education'

    click_button 'Create link'
    link = Link.first
    expect(link.tags.map(&:tag)).to include('education')
  end

end

# expect(link.tags.map( { |element| element.tag })).to include('education')

#
# ['one', 'two', 'three'].map { |word| word.upcase }
# #=> ['ONE', 'TWO', 'THREE']
#
# ['one', 'two', 'three'].map(&:upcase)
# #=> ['ONE', 'TWO', 'THREE']
