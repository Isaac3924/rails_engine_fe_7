require "rails_helper"

RSpec.describe "Merchants Index" do 
  before(:each) do 
    visit merchants_path
  end

  describe "As a visitor, when visiting merchants"
    it "I should see a list of merhcants by name" do 
      within(".merchants") do 
        expect(page).to have_content("Merchants")
        expect(page).to have_link("Schroeder-Jerde")
        expect(page).to have_link("Klein, Rempel and Jones")
        expect(page).to have_link("Willms and Sons")
      end
    end

    it "And when I click a merchant's name, I should be taken to said merchant's show page" do 
      within(".merchants") do 
        click_link("Schroeder-Jerde")
      end

      expect(current_path).to eq("merchants/1")

      visit merchants_path

      within(".merchants") do 
        click_link("Willms and Sons")
      end

      expect(current_path).to eq("merchants/3")
    end
  end
end