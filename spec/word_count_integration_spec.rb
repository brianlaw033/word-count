require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the making change process', {:type => :feature}) do
    it('processes the user entry of paragraph & word then returns the result') do
      visit('/')
      fill_in('paragraph', :with => 'I am walking my cat to the cathedral')
      fill_in('word', :with => 'cat')
      click_button('Go!')
      expect(page).to have_content('Result: 1')
    end
  end
