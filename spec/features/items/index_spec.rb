require "rails_helper"

RSpec.describe "Items Index" do 
  before(:each) do 
    visit merchants_path
  end

  describe "As a visitor, when visiting items" do
    it "I should see a list of items by name" do 
      within(".items") do 
        expect(page).to have_content("Items")
        expect(page).to have_link("")
        expect(page).to have_link("")
        expect(page).to have_link("")
      end
    end

    it "And when I click an item's name, I should be taken to said item's show page" do 
      within(".items") do 
        click_link("")
      end

      expect(current_path).to eq("/items/1")

      visit merchants_path

      within(".items") do 
        click_link("")
      end

      expect(current_path).to eq("/items/3")
    end
  end
end