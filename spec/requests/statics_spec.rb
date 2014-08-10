require 'rails_helper'

RSpec.describe "Statics pages", :type => :request do

  describe "Home page" do
    it "should have the base title" do
      visit'/static/home'
      expect(page).to have_title("Canales")
    end
    it "should not have its title" do
      visit'/static/home'
      expect(page).not_to have_title("| Home")
    end
    it "should have the content 'Sample App'" do
      visit '/static/home'
      expect(page).to have_content('Sample App')
    end
  end

  describe "Help page" do
    it "should have the right title" do
      visit'/static/help'
      expect(page).to have_title("Help")
    end
    it "should have the content 'Help'" do
      visit '/static/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    it "should have the right title" do
      visit'/static/about'
      expect(page).to have_title("About")
    end
    it "should have the content 'About Us'" do
      visit '/static/about'
      expect(page).to have_content('About Us')
    end
  end

end
