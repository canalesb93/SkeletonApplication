require 'rails_helper'

RSpec.describe "Statics pages", :type => :request do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up')}
    it { should have_title('Registration')}
  end
end
