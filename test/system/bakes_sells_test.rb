require "application_system_test_case"

class BakesSellsTest < ApplicationSystemTestCase
  setup do
    @bakes_sell = bakes_sells(:one)
  end

  test "visiting the index" do
    visit bakes_sells_url
    assert_selector "h1", text: "Bakes Sells"
  end

  test "creating a Bakes sell" do
    visit bakes_sells_url
    click_on "New Bakes Sell"

    fill_in "Date sell", with: @bakes_sell.date_sell
    fill_in "Name", with: @bakes_sell.name
    fill_in "Price", with: @bakes_sell.price
    fill_in "Quantity", with: @bakes_sell.quantity
    click_on "Create Bakes sell"

    assert_text "Bakes sell was successfully created"
    click_on "Back"
  end

  test "updating a Bakes sell" do
    visit bakes_sells_url
    click_on "Edit", match: :first

    fill_in "Date sell", with: @bakes_sell.date_sell
    fill_in "Name", with: @bakes_sell.name
    fill_in "Price", with: @bakes_sell.price
    fill_in "Quantity", with: @bakes_sell.quantity
    click_on "Update Bakes sell"

    assert_text "Bakes sell was successfully updated"
    click_on "Back"
  end

  test "destroying a Bakes sell" do
    visit bakes_sells_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bakes sell was successfully destroyed"
  end
end
