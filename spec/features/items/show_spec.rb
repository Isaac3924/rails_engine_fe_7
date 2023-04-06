require "rails_helper"

RSpec.describe "Items Show" do 

  describe "As a visitor, when visiting items show page" do
    it "I should see the name of the item, description, and unit price" do 
      visit "items/1"

      expect(page).to have_content("")
      expect(page).to have_content("")
      expect(page).to have_content("")

      visit "items/3"

      expect(page).to have_content("")
      expect(page).to have_content("")
      expect(page).to have_content("")
    end
  end
end