require "application_system_test_case"

class TarificationsTest < ApplicationSystemTestCase
  setup do
    @tarification = tarifications(:one)
  end

  test "visiting the index" do
    visit tarifications_url
    assert_selector "h1", text: "Tarifications"
  end

  test "creating a Tarification" do
    visit tarifications_url
    click_on "New Tarification"

    fill_in "Price", with: @tarification.price
    fill_in "Type", with: @tarification.type
    fill_in "Year", with: @tarification.year
    click_on "Create Tarification"

    assert_text "Tarification was successfully created"
    click_on "Back"
  end

  test "updating a Tarification" do
    visit tarifications_url
    click_on "Edit", match: :first

    fill_in "Price", with: @tarification.price
    fill_in "Type", with: @tarification.type
    fill_in "Year", with: @tarification.year
    click_on "Update Tarification"

    assert_text "Tarification was successfully updated"
    click_on "Back"
  end

  test "destroying a Tarification" do
    visit tarifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tarification was successfully destroyed"
  end
end
