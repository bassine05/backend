require "application_system_test_case"

class ReservedDomainsTest < ApplicationSystemTestCase
  setup do
    @reserved_domain = reserved_domains(:one)
  end

  test "visiting the index" do
    visit reserved_domains_url
    assert_selector "h1", text: "Reserved Domains"
  end

  test "creating a Reserved domain" do
    visit reserved_domains_url
    click_on "New Reserved Domain"

    fill_in "Code auth", with: @reserved_domain.code_auth
    fill_in "Motif", with: @reserved_domain.motif
    fill_in "Tag", with: @reserved_domain.tag_id
    click_on "Create Reserved domain"

    assert_text "Reserved domain was successfully created"
    click_on "Back"
  end

  test "updating a Reserved domain" do
    visit reserved_domains_url
    click_on "Edit", match: :first

    fill_in "Code auth", with: @reserved_domain.code_auth
    fill_in "Motif", with: @reserved_domain.motif
    fill_in "Tag", with: @reserved_domain.tag_id
    click_on "Update Reserved domain"

    assert_text "Reserved domain was successfully updated"
    click_on "Back"
  end

  test "destroying a Reserved domain" do
    visit reserved_domains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reserved domain was successfully destroyed"
  end
end
