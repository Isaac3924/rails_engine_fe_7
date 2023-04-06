require "rails_helper"

RSpec.describe "Merchants Show" do 

  describe "As a visitor, when visiting merchants show page"
    it "I should see a list of items that merchant sells" do 
      visit "merchants/1"

      expect(page).to have_content("Schroeder-Jerde")

      within(".items") do 
        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Item Expedita Aliquam")
        expect(page).to have_content("Item Provident At")
      end

      visit "merchants/3"

      expect(page).to have_content("Willms and Sons")

      within(".items") do 
        expect(page).to have_content("Item Enim Error")
        expect(page).to have_content("Item Delectus Dolorem")
        expect(page).to have_content("Item Iusto Atque")
      end
    end
  end
end