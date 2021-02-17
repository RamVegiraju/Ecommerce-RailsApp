require "application_system_test_case"

class ShoppingitemsTest < ApplicationSystemTestCase
  setup do
    @shoppingitem = shoppingitems(:one)
  end

  test "visiting the index" do
    visit shoppingitems_url
    assert_selector "h1", text: "Shoppingitems"
  end

  test "creating a Shoppingitem" do
    visit shoppingitems_url
    click_on "New Shoppingitem"

    fill_in "Email", with: @shoppingitem.email
    fill_in "Item name", with: @shoppingitem.item_name
    fill_in "Item number", with: @shoppingitem.item_number
    fill_in "Price", with: @shoppingitem.price
    click_on "Create Shoppingitem"

    assert_text "Shoppingitem was successfully created"
    click_on "Back"
  end

  test "updating a Shoppingitem" do
    visit shoppingitems_url
    click_on "Edit", match: :first

    fill_in "Email", with: @shoppingitem.email
    fill_in "Item name", with: @shoppingitem.item_name
    fill_in "Item number", with: @shoppingitem.item_number
    fill_in "Price", with: @shoppingitem.price
    click_on "Update Shoppingitem"

    assert_text "Shoppingitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Shoppingitem" do
    visit shoppingitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shoppingitem was successfully destroyed"
  end
end
