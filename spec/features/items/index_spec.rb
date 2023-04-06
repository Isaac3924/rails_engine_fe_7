require "rails_helper"

RSpec.describe "Items Index" do 
  before(:each) do 
    visit items_path
  end

  describe "As a visitor, when visiting items" do
    it "I should see a list of items by name" do 
      within(".items") do 
        expect(page).to have_content("Items")
        expect(page).to have_link("Item Nemo Facere")
        expect(page).to have_link("Item Expedita Aliquam")
        expect(page).to have_link("Item Provident At")
      end
    end

    it "And when I click an item's name, I should be taken to said item's show page" do 
      within(".items") do 
        click_link("Item Nemo Facere")
      end

      expect(current_path).to eq("/items/4")

      visit items_path

      within(".items") do 
        click_link("Item Provident At")
      end

      expect(current_path).to eq("/items/6")
    end
  end
end