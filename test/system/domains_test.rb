require "application_system_test_case"

class DomainsTest < ApplicationSystemTestCase
  setup do
    @domain = domains(:one)
  end

  test "visiting the index" do
    visit domains_url
    assert_selector "h1", text: "Domains"
  end

  test "creating a Domain" do
    visit domains_url
    click_on "New Domain"

    fill_in "Contact", with: @domain.contact_id
    fill_in "Expiration date", with: @domain.expiration_date
    fill_in "Extension", with: @domain.extension_id
    fill_in "Name", with: @domain.name
    fill_in "Operation", with: @domain.operation_id
    fill_in "Registrar", with: @domain.registrar_id
    fill_in "Status", with: @domain.status
    click_on "Create Domain"

    assert_text "Domain was successfully created"
    click_on "Back"
  end

  test "updating a Domain" do
    visit domains_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @domain.contact_id
    fill_in "Expiration date", with: @domain.expiration_date
    fill_in "Extension", with: @domain.extension_id
    fill_in "Name", with: @domain.name
    fill_in "Operation", with: @domain.operation_id
    fill_in "Registrar", with: @domain.registrar_id
    fill_in "Status", with: @domain.status
    click_on "Update Domain"

    assert_text "Domain was successfully updated"
    click_on "Back"
  end

  test "destroying a Domain" do
    visit domains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Domain was successfully destroyed"
  end
end
