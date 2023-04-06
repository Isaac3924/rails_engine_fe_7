require "rails_helper"

RSpec.describe "Items Show" do 

  describe "As a visitor, when visiting items show page" do
    it "I should see the name of the item, description, and unit price" do 
      visit "items/4"

      expect(page).to have_content("Name: Item Nemo Facere")
      expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
      expect(page).to have_content("Unit Price: 42.91")

      visit "items/6"

      expect(page).to have_content("Name: Item Provident At")
      expect(page).to have_content("Description: Numquam officiis reprehenderit eum ratione neque tenetur. Officia aut repudiandae eum at ipsum doloribus. Iure minus itaque similique. Ratione dicta alias asperiores minima ducimus nesciunt at.")
      expect(page).to have_content("Unit Price: ")
    end
  end
end