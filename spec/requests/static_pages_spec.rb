require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Todo App | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Todo App'" do
      visit '/static_pages/help'
      expect(page).to have_content('Todo App')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/home'
      expect(page).to have_title("Todo App | Home")
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("Todo App | About")
    end
  end
end
