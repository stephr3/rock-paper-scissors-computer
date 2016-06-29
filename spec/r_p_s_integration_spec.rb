require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rock paper scissors result path', {:type => :feature}) do
  it('processes the player one entry and the player two entry and returns the winner') do
    visit('/')
    select('Rock', :from => 'player_one')
    select('Scissors', :from => 'player_two')
    click_button("See the Winner!")
    expect(page).to have_content("true")
  end
end
