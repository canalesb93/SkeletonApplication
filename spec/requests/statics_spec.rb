require 'rails_helper'

RSpec.describe "Statics pages", :type => :request do

  subject { page }

    shared_examples_for "all static pages" do
      it { should have_selector('h1', text: heading) }
      it { should have_title(full_title(page_title)) }
    end

    describe "Home page" do
      before { visit root_path }
      let(:heading)    { 'Activity Page' }
      let(:page_title) { '' }

      it_should_behave_like "all static pages"
      it { should_not have_title('| Home') }
    end

    describe "About page" do
      before { visit about_path }

      let(:heading)    { 'About' }
      let(:page_title) { 'About' }

      it_should_behave_like "all static pages"
    end

    describe "Contact page" do
      before { visit contact_path }

      let(:heading)    { 'Contact' }
      let(:page_title) { 'Contact' }

      it_should_behave_like "all static pages"
    end

    it "should have the right links on the layout" do
      visit root_path
      click_link "About"
      expect(page).to have_title(full_title('About Me'))
      click_link "Contact"
      expect(page).to have_title(full_title('Contact'))
      click_link "Home"
      click_link "Sign up now!"
      expect(page).to have_title(full_title('Registration'))
    end

end
