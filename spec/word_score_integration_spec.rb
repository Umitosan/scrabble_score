require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes the user entry and returns it title cased') do
    visit('/form')
    fill_in('sentence', :with => 'DIG')
    click_button('Go')
    expect(page).to have_content('5')
  end
end
