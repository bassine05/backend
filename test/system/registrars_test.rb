require "application_system_test_case"

class RegistrarsTest < ApplicationSystemTestCase
  setup do
    @registrar = registrars(:one)
  end

  test "visiting the index" do
    visit registrars_url
    assert_selector "h1", text: "Registrars"
  end

  test "creating a Registrar" do
    visit registrars_url
    click_on "New Registrar"

    fill_in "Adresse", with: @registrar.adresse
    fill_in "City", with: @registrar.city_id
    fill_in "Fax", with: @registrar.fax
    fill_in "Mail", with: @registrar.mail
    fill_in "Name", with: @registrar.name
    fill_in "Phone", with: @registrar.phone
    fill_in "Url", with: @registrar.url
    click_on "Create Registrar"

    assert_text "Registrar was successfully created"
    click_on "Back"
  end

  test "updating a Registrar" do
    visit registrars_url
    click_on "Edit", match: :first

    fill_in "Adresse", with: @registrar.adresse
    fill_in "City", with: @registrar.city_id
    fill_in "Fax", with: @registrar.fax
    fill_in "Mail", with: @registrar.mail
    fill_in "Name", with: @registrar.name
    fill_in "Phone", with: @registrar.phone
    fill_in "Url", with: @registrar.url
    click_on "Update Registrar"

    assert_text "Registrar was successfully updated"
    click_on "Back"
  end

  test "destroying a Registrar" do
    visit registrars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registrar was successfully destroyed"
  end
end
