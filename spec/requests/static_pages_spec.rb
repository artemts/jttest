require 'spec_helper'

describe "Static pages" do
  subject { page }

  let(:base_title) { "Bulletin Board" }

  describe "about page" do
    before { visit about_path }

    it { should have_title "#{base_title} | About" }
    it { should have_content "About application" }
  end

  describe "contact page" do
    before { visit contact_path }

    it { should have_title "#{base_title} | Contact" }
    it { should have_content "Contact author" }
  end
end
