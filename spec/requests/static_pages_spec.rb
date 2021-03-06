require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
  	it "should have the content 'Eat out together'" do
  		visit '/static_pages/home'
  		expect(page).to have_content('Eat out together')
  	end
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Eat out together! | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Eat out together! | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Eat out together! | About Us")
    end
  end
end
