require 'rails_helper'

RSpec.describe "Statics pages", :type => :request do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Activity Page')}
    it { should have_title('Canales')}
    it { should_not have_title('| Home')}
  end

  describe "About page" do
    before { visit about_path}

    it { should have_title('About')}
    it { should have_content('About me')}
  end

  describe "Contact page" do
    it "should have the right title" do
      visit contact_path
      expect(page).to have_title("Contact")
    end
    it "should have the content 'Contact information'" do
      visit contact_path
      expect(page).to have_content('Contact information')
    end
  end

end
