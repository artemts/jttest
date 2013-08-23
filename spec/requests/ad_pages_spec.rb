require 'spec_helper'

describe "Ad pages" do
  subject { page }

  describe "index page" do
    before { visit root_path }

    it { should have_title "Bulletin Board" }
    it { should have_content "Welcome to Bulletin Board" }
    it { should have_link "Sign in" }
    it { should have_link "Sign up" }

    describe "header" do
      it { should have_link "BULLETIN BOARD", :href => root_path }
      it { should have_link "Home", :href => root_path }
      it { should have_link "Users" }
      it { should have_link "Sign in" }
    end

    describe "footer" do
      it { should have_link "About", :href => about_path }
      it { should have_link "Contact", :href =>  contact_path }
    end
  end
end
