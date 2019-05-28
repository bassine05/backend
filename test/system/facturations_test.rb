require "application_system_test_case"

class FacturationsTest < ApplicationSystemTestCase
  setup do
    @facturation = facturations(:one)
  end

  test "visiting the index" do
    visit facturations_url
    assert_selector "h1", text: "Facturations"
  end

  test "creating a Facturation" do
    visit facturations_url
    click_on "New Facturation"

    fill_in "Account", with: @facturation.account
    fill_in "Dateenvoi", with: @facturation.dateEnvoi
    fill_in "Datelimite", with: @facturation.dateLimite
    fill_in "Num", with: @facturation.num
    fill_in "Registrar", with: @facturation.registrar_id
    fill_in "Remise", with: @facturation.remise
    click_on "Create Facturation"

    assert_text "Facturation was successfully created"
    click_on "Back"
  end

  test "updating a Facturation" do
    visit facturations_url
    click_on "Edit", match: :first

    fill_in "Account", with: @facturation.account
    fill_in "Dateenvoi", with: @facturation.dateEnvoi
    fill_in "Datelimite", with: @facturation.dateLimite
    fill_in "Num", with: @facturation.num
    fill_in "Registrar", with: @facturation.registrar_id
    fill_in "Remise", with: @facturation.remise
    click_on "Update Facturation"

    assert_text "Facturation was successfully updated"
    click_on "Back"
  end

  test "destroying a Facturation" do
    visit facturations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Facturation was successfully destroyed"
  end
end
