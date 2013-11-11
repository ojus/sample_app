require 'spec_helper'

describe "StaticPages" do

	# Describe indicates what is being tested 
  describe "Home page" do

  	# When visting the home page at /static_pages/home, does it contain the words "Sample App"
    it "should have the content 'Sample App'" do
  		# Use the Capybara function to simulate visiting the URL /static_pages/home in a browser
    	visit '/static_pages/home'
    	# Use the page variable from Capybara to expect matching content
    	expect(page).to have_content('Sample App')
    end
  end 


    # Repeat for help page 
  describe "Help page" do

  	# When visting the home page at /static_pages/home, does it contain the words "Sample App"
    it "should have the content 'Help'" do
  		# Use the Capybara function to simulate visiting the URL /static_pages/home in a browser
    	visit '/static_pages/help'
    	# Use the page variable from Capybara to expect matching content
    	expect(page).to have_content('Help')
    end
  end

    # Repeat for about page 
  describe "About page" do

  	it "should have the content 'About Us'" do
    	visit '/static_pages/about'
    	expect(page).to have_content('About Us')
    end
  end
end
